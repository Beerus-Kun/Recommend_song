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

def insert_music(music, singer, author, url, flag, url_image, rated):
    cursor.execute("""
        INSERT INTO MUSIC(name_music, name_singer, name_author, url, flag, url_image, rated)
        VALUES(?, ?, ?, ?,?,?,?)
    """, music, singer, author, url, flag, url_image, rated) 
    cnxn.commit()
    # cnxn.close()

# def select_music():
#     cursor.execute("""
#         SELECT * FROM MUSIC
#     """)
#     res = cursor.fetchall()
#     cnxn.commit()
#     cnxn.close()
#     return res

def select_name_music(name):
    cursor.execute(f"""
        select * from music where name_music like N'%{name}%' order by rated DESC
    """)
    res = [dict((cursor.description[i][0], value) 
               for i, value in enumerate(row)) for row in cursor.fetchall()]
    # cnxn.commit()
    # cnxn.close()
    return res

def select_music(flag):
    cursor.execute("""
        select * from music where flag=? order by rated DESC
    """, int(flag))
    res = [dict((cursor.description[i][0], value) 
               for i, value in enumerate(row)) for row in cursor.fetchall()]
    # cnxn.commit()
    # cnxn.close()
    return res

def select_polular_music():
    cursor.execute("""
        select * from music order by id DESC
    """)
    res = [dict((cursor.description[i][0], value) 
               for i, value in enumerate(row)) for row in cursor.fetchall()]
    # cnxn.commit()
    # cnxn.close()
    return res