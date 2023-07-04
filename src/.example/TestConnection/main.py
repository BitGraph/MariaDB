from mysql.connector import connect, Error


def dbconnect():
    try:
        with connect(
            host="localhost",
            user="root",
            password="144000"
        ) as connection:
            print(connection)
    except Error as e:
        print(e)


if __name__ == '__main__':
    dbconnect()