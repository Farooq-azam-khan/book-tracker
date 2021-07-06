from fastapi import Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer
from passlib.context import CryptContext


from jose import JWTError, jwt

from .types import TokenData
from . import config

oauth2_scheme = OAuth2PasswordBearer(tokenUrl='token')
pwd_context = CryptContext(schemes=['bcrypt'], deprecated='auto')


async def get_current_user(token: str = Depends(oauth2_scheme), settings: config.Settings = Depends(config.get_settings)):
    credentials_exception = HTTPException(
        status_code=status.HTTP_401_UNAUTHORIZED,
        detail='Could not validate credentials',
        headers={'WWW-Authenticate': 'Bearer'},
    )

    try:

        payload = jwt.decode(token, settings.SECRET_KEY, algorithms=[settings.ALGORITHM])
        username: str = payload.get('sub')
        if username is None:
            raise credentials_exception
        token_data = TokenData(username=username)
    except JWTError:
        raise credentials_exception
    return True


def authenticate_user(username: str, password: str, settings: config.Settings = config.get_settings):
    print(f'comparing {settings.PASSWORD} == {password} and {username}=={settings.USERNAME}')
    return settings.PASSWORD == password and settings.USERNAME == username
