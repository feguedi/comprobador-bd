import cx_Oracle
from PyQt5.QtWidgets import QMessageBox
from PyQt5.QtSql import QSqlQuery


def pregunta_1():
    con = cx_Oracle.connect('system/oracle@localhost/Autos')
    if not con.open():
        QMessageBox.critical(None, "Cannot open database",
                             "Unable to establish a database connection.\n"
                             "This example needs SQLite support. Please read the Qt SQL "
                             "driver documentation for information how to build it.\n\n"
                             "Click Cancel to exit.",
                             QMessageBox.Cancel)
        return False
    cur = con.cursor()
    cur.execute('SELECT STOCK.CANTIDAD AS "CANTIDAD_SPARK", DISTRIBUIDOR.NOMBRE'
                'FROM DISTRIBUIDOR'
                'INNER JOIN STOCK'
                'ON STOCK.ID_DIS = DISTRIBUIDOR.ID_DIS'
                'WHERE STOCK.ID_CAR = 963;')
    respuesta = []
    for i in cur:
        respuesta.append(i)
    cur.close()
    con.close()
    return respuesta


def pregunta_2():
    con = cx_Oracle.connect('system/oracle@localhost/Autos')
    if not con.open():
        QMessageBox.critical(None, "Cannot open database",
                             "Unable to establish a database connection.\n"
                             "This example needs SQLite support. Please read the Qt SQL "
                             "driver documentation for information how to build it.\n\n"
                             "Click Cancel to exit.",
                             QMessageBox.Cancel)
        return False
    cur = con.cursor()
    cur.execute('')
    respuesta = []
    for i in cur:
        respuesta.append(i)
    cur.close()
    con.close()
    return respuesta


def pregunta_3():
    con = cx_Oracle.connect('system/oracle@localhost/Autos')
    if not con.open():
        QMessageBox.critical(None, "Cannot open database",
                             "Unable to establish a database connection.\n"
                             "This example needs SQLite support. Please read the Qt SQL "
                             "driver documentation for information how to build it.\n\n"
                             "Click Cancel to exit.",
                             QMessageBox.Cancel)
        return False
    cur = con.cursor()
    cur.execute('')
    respuesta = []
    for i in cur:
        respuesta.append(i)
    cur.close()
    con.close()
    return respuesta


def pregunta_4():
    con = cx_Oracle.connect('system/oracle@localhost/Autos')
    if not con.open():
        QMessageBox.critical(None, "Cannot open database",
                             "Unable to establish a database connection.\n"
                             "This example needs SQLite support. Please read the Qt SQL "
                             "driver documentation for information how to build it.\n\n"
                             "Click Cancel to exit.",
                             QMessageBox.Cancel)
        return False
    cur = con.cursor()
    cur.execute('')
    respuesta = []
    for i in cur:
        respuesta.append(i)
    cur.close()
    con.close()
    return respuesta
