from PyQt5.QtWidgets import QMessageBox

# Objeto x debe ser una lista
def texto(x):
    iterador = len(x)
    print(iterador)
    for i in range(iterador):
        print("Evaluando:", x[i])
        if x[i] is "DELETE" or x[i] is "ALTER" or x[i] is "DROP" or x[i] is "CREATE":
            mensaje(False)
        elif x[i] is "delete" or x[i] is "alter" or x[i] is "drop" or x[i] is "create":
            mensaje(False)
        else:
            return True


def mensaje(valor):
    if not valor:
        QMessageBox.about(None, 'Instrucción incorrecta',
                          'Ingrese las instrucciones debidas dentro de las convenciones'
                          ' de código de PL/SQL.\n'
                          'No ingrese instrucciones para insertar, borrar o crear datos'
                          ' o tablas.',
                          QMessageBox.Close)
