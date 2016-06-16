
import cx_Oracle


def crear_conexion():
    #             usuario/contraseña@nombreservidor/nombrebbdd
    con = cx_Oracle.connect('system/oracle@localhost/Autos')
    print(con.version)
    cerrar(con)


def cerrar(x):
    x.close()

crear_conexion()
