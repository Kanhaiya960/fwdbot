from os import environ 

class Config:
    API_ID = environ.get("API_ID", "29265798")
    API_HASH = environ.get("API_HASH", "9dd673fa7291fb5a954902ea10fc8cb5")
    BOT_TOKEN = environ.get("BOT_TOKEN", "") 
    BOT_SESSION = environ.get("BOT_SESSION", "bot") 
    DATABASE_URI = "mongodb+srv://Kanhaiya:kanhaiya960@cluster0.ljdbg.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"
    DATABASE_NAME = environ.get("DATABASE_NAME", "Forward")
    BOT_OWNER_ID = [int(id) for id in environ.get("BOT_OWNER_ID", '6552970915').split()]

class temp(object): 
    lock = {}
    CANCEL = {}
    forwardings = 0
    BANNED_USERS = []
    IS_FRWD_CHAT = []
    
