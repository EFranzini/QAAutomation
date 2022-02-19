from requests import get

__version__ = "1.0"
__scope__ = "GLOBAL"
__author__ = "Enzo Franzini"


class EmailLib(object):
    ROBOT_LIBRARY_VERSION = __version__
    ROBOT_LIBRARY_SCOPE = __scope__

    def get_random_email(self, email_api_url) -> str:
        email = get(email_api_url).json()[0]
        return email
