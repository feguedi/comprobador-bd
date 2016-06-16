
import cx_Oracle


def crear_conexion():
    #             usuario/contraseña@nombreservidor/nombrebbdd
    con = cx_Oracle.connect('hr/hr@localhost/orcl')
    print(con.version)
    cerrar(con)


def cerrar(x):
    x.close()
