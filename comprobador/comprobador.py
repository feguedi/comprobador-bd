from PyQt5.QtWidgets import QMessageBox
from PyQt5.QtGui import QIcon, QPixmap


# Objeto x debe ser una lista
def texto(x):
    prev = True
    print("Evaluando:", x)
    if x is "DELETE" or x is "ALTER" or x is "DROP" or x is "CREATE":
        prev = False
    elif x is "delete" or x is "alter" or x is "drop" or x is "create":
        prev = False
    return prev


def mensaje(valor):
    qmsgBox = QMessageBox()
    qmsgBox.setStyleSheet(
            'QMessageBox {background-color: #2b5b84; color: white;}\n'
            'QPushButton{color: white;\n'
            'font-size: 16px; '
            'background-color: #1d1d1d; '
            'border-radius: 10px; '
            'padding: 10px; '
            'text-align: center;}\n'
            'QPushButton:hover{color: #2b5b84;}')
    icon = QIcon()
    if not valor:
        icon.addPixmap(QPixmap("src/error.svg"), QIcon.Normal, QIcon.Off)
        qmsgBox.setWindowIcon(icon)
        QMessageBox.about(qmsgBox, 'Instrucción incorrecta',
                          """Ingrese las instrucciones debidas dentro de las convenciones\
                           de código de PL/SQL.\n
                          No ingrese instrucciones para insertar, borrar o crear datos\
                           o tablas.""")
        print(False)
    elif valor:
        icon.addPixmap(QPixmap("src/success.svg"), QIcon.Normal, QIcon.Off)
        qmsgBox.setWindowIcon(icon)
        QMessageBox.about(qmsgBox, 'Esta madre no sirve',
                          'Ingrese las instrucciones debidas dentro de las convenciones'
                          ' de código de PL/SQL.\n'
                          'No ingrese instrucciones para insertar, borrar o crear datos'
                          ' o tablas.')
        return True

if __name__ == '__main__':
    texto('CREATE')
