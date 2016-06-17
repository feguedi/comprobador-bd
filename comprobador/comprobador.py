from PyQt5.QtWidgets import QMessageBox


# Objeto x debe ser una lista
def texto(x):
    prev = True
    print("Evaluando:", x)
    if x is "DELETE" or x is "ALTER" or x is "DROP" or x is "CREATE":
        prev = False
    elif x is "delete" or x is "alter" or x is "drop" or x is "create":
        prev = False
    mensaje(prev)
    return prev


def mensaje(valor):
    if not valor:
        QMessageBox.about(QMessageBox(), 'Instrucción incorrecta',
                          """Ingrese las instrucciones debidas dentro de las convenciones\
                           de código de PL/SQL.\n
                          No ingrese instrucciones para insertar, borrar o crear datos\
                           o tablas.""")
        print(False)
    elif valor:
        QMessageBox.about(QMessageBox(), 'Esta madre no sirve',
                          'Ingrese las instrucciones debidas dentro de las convenciones'
                          ' de código de PL/SQL.\n'
                          'No ingrese instrucciones para insertar, borrar o crear datos'
                          ' o tablas.')
        return True

if __name__ == '__main__':
    texto('CREATE')
