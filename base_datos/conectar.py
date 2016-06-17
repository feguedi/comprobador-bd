
import cx_Oracle


def crear_conexion():
    #             usuario/contraseña@nombreservidor/tns
    con = cx_Oracle.connect('system/oracle@localhost/XE')
    print(con.version)
    cerrar(con)


def cerrar(x):
    x.close()

crear_conexion()
