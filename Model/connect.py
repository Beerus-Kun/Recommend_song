import pyodbc 
# Some other example server values are
# server = 'localhost\sqlexpress' # for a named instance
# server = 'myserver,port' # to specify an alternate port
server = 'BEERUS' 
database = 'MUSIC' 
username = 'sa' 
password = '123' 
# ENCRYPT defaults to yes starting in ODBC Driver 18. It's good to always specify ENCRYPT=yes on the client side to avoid MITM attacks.
cnxn_str = ("Driver={SQL Server Native Client 11.0};"
            "Server=BEERUS;"
            "Database=MUSIC;"
            "Trusted_Connection=yes;")
cnxn = pyodbc.connect(cnxn_str)
cursor = cnxn.cursor()
#Sample select query

def insert_music(music, singer, author, url, flag):
    cursor.execute("""
        INSERT INTO MUSIC(name_music, name_singer, name_author, url, flag)
        VALUES(?, ?, ?, ?,?)
    """, music, singer, author, url, flag) 
    cnxn.commit()
