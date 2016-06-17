import cx_Oracle
from PyQt5.QtWidgets import QMessageBox


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
    # Aquí se agrega el query de PL/SQL
    cur.execute('SELECT STOCK.CANTIDAD AS "CANTIDAD_SPARK", DISTRIBUIDOR.NOMBRE'
                'FROM DISTRIBUIDOR '
                'INNER JOIN STOCK '
                'ON STOCK.ID_DIS = DISTRIBUIDOR.ID_DIS '
                'WHERE STOCK.ID_CAR = 963;')
    respuesta = []
    for i in cur.fetchall():
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
    # Aquí se agrega el query de PL/SQL
    cur.execute('SELECT STOCK.CANTIDAD AS "cantidad_jetta", DISTRIBUIDOR.NOMBRE, car.color'
                'FROM distribuidor'
                'inner JOIN stock'
                'on STOCK.ID_DIS = DISTRIBUIDOR.ID_DIS'
                'inner JOIN car'
                'on STOCK.ID_car = car.ID_car'
                'WHERE stock.ID_car = 963 OR'
                'stock.ID_car = 753 OR'
                'car.color = "cafe" OR'
                'car.color = "violeta" AND'
                'distribuidor.nombre = "Automotors" OR'
                'distribuidor.nombre = "Motorsort";')
    respuesta = []
    for i in cur.fetchall():
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
    # Aquí se agrega el query de PL/SQL
    cur.execute(
        'SELECT carro.ID_CAR, carro.NOMBRE, carro.MODELO, stock.CANTIDAD, carro.COLOR, DISTRIBUIDOR.NOMBRE, '
        'DISTRIBUIDOR.UBICACION FROM carro '
        'INNER JOIN STOCK ON STOCK.ID_CAR = CARRO.ID_CAR '
        'INNER JOIN DISTRIBUIDOR ON DISTRIBUIDOR.ID_DIS = STOCK.ID_DIS '
        'WHERE carro.ID_MAR = 102;')
    respuesta = []
    for i in cur.fetchall():
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
    # Aquí se agrega el query de PL/SQL
    cur.execute('')
    respuesta = []
    for i in cur.fetchall():
        respuesta.append(i)
    cur.close()
    con.close()
    return respuesta
