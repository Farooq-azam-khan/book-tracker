from fastapi import Depends, HTTPException, status
from dotenv import load_dotenv, dotenv_values
import os 
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from passlib.context import CryptContext


from jose import JWTError, jwt

from .models import Token, TokenData

load_dotenv('.env')
SECRET_KEY = os.environ['SECRET_KEY']#dotenv_values()['SECRET_KEY']
ALGORITHM = os.environ['ALGORITHM']#dotenv_values()['ALGORITHM']

oauth2_scheme = OAuth2PasswordBearer(tokenUrl='token')
pwd_context = CryptContext(schemes=['bcrypt'], deprecated='auto')


async def get_current_user(token: str = Depends(oauth2_scheme)):
    credentials_exception = HTTPException(
        status_code=status.HTTP_401_UNAUTHORIZED,
        detail='Could not validate credentials',
        headers={'WWW-Authenticate': 'Bearer'},
    )

    try:
        
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        username: str = payload.get('sub')
        if username is None:
            raise credentials_exception
        token_data = TokenData(username=username)
    except JWTError:
        raise credentials_exception
    return True 
    # user = get_user(fake_users_db, username=token_data.username)
    # if user is None:
    #     raise credentials_exception
    # return user

PASSWORD = os.environ['PASSWORD']
try: 
    USERNAME = dotenv_values('.env')['USERNAME'] 
except: 
    USERNAME = os.environ['USERNAME']

def authenticate_user(username: str, password: str):
    print(f'comparing{PASSWORD} == {password} and {username}=={USERNAME}')
    return PASSWORD == password and USERNAME == username
