from fastapi import Depends, HTTPException, status
from dotenv import load_dotenv, dotenv_values

from models import Token, TokenData
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from passlib.context import CryptContext


from jose import JWTError, jwt


load_dotenv('.env')
SECRET_KEY = dotenv_values()['SECRET_KEY']
ALGORITHM = dotenv_values()['ALGORITHM']

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

def authenticate_user(username: str, password: str):
    return dotenv_values()['PASSWORD'] == password and dotenv_values()['USERNAME'] == username
