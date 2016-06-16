import cx_Oracle
from PyQt5.QtWidgets import QMessageBox
from PyQt5.QtSql import QSqlDatabase, QSqlQuery


def pregunta_1(pre):
    con = cx_Oracle.connect('system/oracle@localhost/Autos')
    if not con.open():
        QMessageBox.critical(None, "Cannot open database",
                             "Unable to establish a database connection.\n"
                             "This example needs SQLite support. Please read the Qt SQL "
                             "driver documentation for information how to build it.\n\n"
                             "Click Cancel to exit.",
                             QMessageBox.Cancel)
        return False
    busqueda = QSqlQuery()
    busqueda.exec_('')
    return True
