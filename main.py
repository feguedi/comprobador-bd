# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'form.ui'
#
# Created by: PyQt5 UI code generator 5.5.1
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QWidget, QApplication
from PyQt5.QtSql import QSqlQueryModel
import cx_Oracle
import recursos_rc

preguntas = {
    1: 'Selecciona la cantidad de autos modelo "Spark" y muestra los distribuidores en donde hay.',
    2: 'Muestra la cantidad de Volkswagen Jetta color blanco y negro en X y Y sucursales',
    3: 'Muestra las versiones del modelo X en todas las sucursales.',
    4: 'Muestra el color que más se repita en X sucursal.'
}

model = QSqlQueryModel()


class UiForm(QWidget):
    def __init__(self):
        super().__init__()
        # self.con = cx_Oracle.connect('pythonhol/welcome@localhost/orcl')
        self.setup_ui(self)
        self.datos = []
        self.boton = False
        self.instrucciones()

    def instrucciones(self):
        self.mensaje = """\
        <h1>Instrucciones</h1>
        <p>Este es un validador de codigo para consultas <b>PL/SQL</b>
        <p>En la parte superior encontrarás una caja de texto donde se deberá ingresar tu consulta y en la parte \
        inferior una vista de tablas que te permitirá saber el resultado de tu consulta. De ser correcta tu consulta \
        de acuerdo a lo que solicita la pregunta, mostrará un mensaje que te lo confirmará
        <h2>Atajos</h2>
        <p>El único atajo
        """
        # QtWidgets.QDialog.accept(self.mensaje)

    def setup_ui(self, Form):
        self.contador = 1
        Form.setObjectName("Form")
        Form.resize(1280, 960)
        Form.setMinimumSize(QtCore.QSize(1280, 960))
        Form.setMaximumSize(QtCore.QSize(1280, 960))
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap("src/database.svg"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        Form.setWindowIcon(icon)
        Form.setStyleSheet("background-color: #ffffff;")
        Form.setLocale(QtCore.QLocale(QtCore.QLocale.Spanish, QtCore.QLocale.Spain))
        self.gridLayout = QtWidgets.QGridLayout(Form)
        self.gridLayout.setContentsMargins(35, 35, 35, 35)
        self.gridLayout.setHorizontalSpacing(6)
        self.gridLayout.setVerticalSpacing(0)
        self.gridLayout.setObjectName("gridLayout")
        self.txt_query = QtWidgets.QPlainTextEdit(Form)
        self.txt_query.setMaximumSize(QtCore.QSize(16777215, 347))
        font = QtGui.QFont()
        font.setFamily("DejaVu Sans Mono")
        font.setPointSize(14)
        self.txt_query.setFont(font)
        self.txt_query.setStyleSheet("border: 2px solid #7e7e7e;\n"
                                     "border-color: rgb(214, 214, 214);\n"
                                     "border-radius: 8px;")
        self.txt_query.setObjectName("txt_query")
        self.gridLayout.addWidget(self.txt_query, 3, 0, 1, 1)
        self.btn_query = QtWidgets.QPushButton(Form)
        self.btn_query.setFocusPolicy(QtCore.Qt.NoFocus)
        self.btn_query.setStyleSheet("QPushButton:pressed {\n"
                                     "background-color: transparent;\n"
                                     "border: none;\n"
                                     "}")
        self.btn_query.setText("")
        icon1 = QtGui.QIcon()
        icon1.addPixmap(QtGui.QPixmap("src/search.svg"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.btn_query.setIcon(icon1)
        self.btn_query.setIconSize(QtCore.QSize(75, 75))
        self.btn_query.setFlat(True)
        self.btn_query.setObjectName("btn_query")
        self.gridLayout.addWidget(self.btn_query, 3, 1, 1, 1)
        spacerItem = QtWidgets.QSpacerItem(20, 20, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem, 1, 0, 1, 1)
        self.lbl_enc_res = QtWidgets.QLabel(Form)
        self.lbl_enc_res.setMaximumSize(QtCore.QSize(16777215, 40))
        self.lbl_enc_res.setStyleSheet("font: 18pt \"Roboto\";\n"
                                       "background-color: rgb(48, 63, 159);\n"
                                       "color: rgb(255, 255, 255);")
        self.lbl_enc_res.setAlignment(QtCore.Qt.AlignCenter)
        self.lbl_enc_res.setObjectName("lbl_enc_res")
        self.gridLayout.addWidget(self.lbl_enc_res, 5, 0, 1, 2)
        self.tableView = QtWidgets.QTableView(Form)
        self.tableView.setMaximumSize(QtCore.QSize(16777215, 385))
        self.tableView.setFocusPolicy(QtCore.Qt.NoFocus)
        self.tableView.setStyleSheet("border: 2px solid #7e7e7e;\n"
                                     "border-color: rgb(214, 214, 214);\n"
                                     "border-radius: 8px;")
        self.tableView.setObjectName("tableView")
        self.gridLayout.addWidget(self.tableView, 6, 0, 1, 2)
        self.lbl_enc_cod = QtWidgets.QLabel(Form)
        self.lbl_enc_cod.setMaximumSize(QtCore.QSize(16777215, 40))
        self.lbl_enc_cod.setStyleSheet("font: 18pt \"Roboto\";\n"
                                       "background-color: rgb(48, 63, 159);\n"
                                       "color: rgb(255, 255, 255);")
        self.lbl_enc_cod.setAlignment(QtCore.Qt.AlignCenter)
        self.lbl_enc_cod.setObjectName("lbl_enc_cod")
        self.gridLayout.addWidget(self.lbl_enc_cod, 2, 0, 1, 1)
        spacerItem1 = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Maximum)
        self.gridLayout.addItem(spacerItem1, 4, 0, 1, 2)
        self.label = QtWidgets.QLabel(Form)
        self.label.setMaximumSize(QtCore.QSize(16777215, 150))
        self.label.setMinimumSize(QtCore.QSize(1083, 112))
        font = QtGui.QFont()
        font.setFamily("Helvetica Neue")
        font.setPointSize(35)
        font.setBold(False)
        font.setItalic(False)
        font.setWeight(0)
        self.label.setFont(font)
        self.label.setStyleSheet("font: 7 35pt \"Helvetica Neue\";")
        self.label.setWordWrap(True)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 0, 1, 1)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setSpacing(27)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.btn_atras = QtWidgets.QPushButton(Form)
        self.btn_atras.setMinimumSize(QtCore.QSize(31, 70))
        self.btn_atras.setMaximumSize(QtCore.QSize(31, 70))
        self.btn_atras.setText("")
        icon2 = QtGui.QIcon()
        icon2.addPixmap(QtGui.QPixmap("src/btn_atr.svg"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.btn_atras.setIcon(icon2)
        self.btn_atras.setIconSize(QtCore.QSize(31, 70))
        self.btn_atras.setFlat(True)
        self.btn_atras.setObjectName("btn_atras")
        self.horizontalLayout.addWidget(self.btn_atras)
        self.line = QtWidgets.QFrame(Form)
        self.line.setMaximumSize(QtCore.QSize(16777215, 82))
        self.line.setFrameShadow(QtWidgets.QFrame.Plain)
        self.line.setLineWidth(10)
        self.line.setMidLineWidth(0)
        self.line.setFrameShape(QtWidgets.QFrame.VLine)
        self.line.setObjectName("line")
        self.horizontalLayout.addWidget(self.line)
        self.btn_siguiente = QtWidgets.QPushButton(Form)
        self.btn_siguiente.setMinimumSize(QtCore.QSize(31, 70))
        self.btn_siguiente.setMaximumSize(QtCore.QSize(31, 70))
        self.btn_siguiente.setText("")
        icon3 = QtGui.QIcon()
        icon3.addPixmap(QtGui.QPixmap("src/btn_sig.svg"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.btn_siguiente.setIcon(icon3)
        self.btn_siguiente.setIconSize(QtCore.QSize(31, 70))
        self.btn_siguiente.setFlat(True)
        self.btn_siguiente.setObjectName("btn_siguiente")
        self.horizontalLayout.addWidget(self.btn_siguiente)
        self.btn_siguiente.setStyleSheet("QPushButton:pressed {\n"
                                         "background-color: transparent;\n"
                                         "border: none;\n"
                                         "}")
        self.btn_atras.setStyleSheet("QPushButton:pressed {\n"
                                     "background-color: transparent;\n"
                                     "border: none;\n"
                                     "}")
        self.gridLayout.addLayout(self.horizontalLayout, 0, 1, 1, 1)
        self.btn_query.clicked['bool'].connect(self.query)
        self.btn_atras.clicked['bool'].connect(self.boton_atras)
        self.btn_siguiente.clicked['bool'].connect(self.boton_siguiente)

        self.retranslate_ui(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslate_ui(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "Comprobador"))
        self.txt_query.setPlainText(_translate("Form", "SELECT *\n"
                                                       "FROM autos\n"
                                                       "WHERE"))
        self.label.setText(_translate("Form", preguntas.get(1)))
        self.btn_atras.setToolTip(_translate("Form", "Anterior"))
        self.btn_siguiente.setToolTip(_translate("Form", "Siguiente"))
        self.btn_query.setShortcut(_translate("Form", "Ctrl+Return"))
        self.lbl_enc_cod.setText(_translate("Form", "Código"))
        self.lbl_enc_res.setText(_translate("Form", "Resultado"))

    def query(self):
        import comprobador.comprobador as comp
        self.busq = self.txt_query.toPlainText()
        for i in range(len(self.busq)):
            self.busq = self.busq.replace('\n', ' ')
            self.busq = self.busq.replace('  ', ' ')
        self.busq = self.busq.split(' ')
        self.boton = True
        print(self.busq)
        print(comp.texto(self.busq))

    def vista(self):
        self.tableView.setModel(model)
        self.datos.append()
        if self.boton is True:
            self.boton = False
            self.tableView.clearSelection()

    def boton_atras(self):
        if self.contador is 1:
            self.contador = 4
        else:
            self.contador -= 1
        self.pregunta()
        print(self.contador)

    def boton_siguiente(self):
        if self.contador is 4:
            self.contador = 1
        else:
            self.contador += 1
        self.pregunta()
        print(self.contador)
        
    def pregunta(self):
        if self.contador == 1:
            self.label.setText(preguntas.get(1))
        elif self.contador == 2:
            self.label.setText(preguntas.get(2))
        elif self.contador == 3:
            self.label.setText(preguntas.get(3))
        elif self.contador == 4:
            self.label.setText(preguntas.get(4))


if __name__ == '__main__':
    import sys

    app = QApplication(sys.argv)
    x = UiForm()
    x.show()
    sys.exit(app.exec_())
