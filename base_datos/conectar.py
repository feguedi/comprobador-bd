import cx_Oracle

#             usuario/contraseña@nombreservidor/nombreconexión
con = cx_Oracle.connect('hr/hr@localhost/orcl')

print(con.version)

con.close()
