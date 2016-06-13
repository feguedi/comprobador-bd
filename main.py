# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'form.ui'
#
# Created by: PyQt5 UI code generator 5.5.1
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QWidget, QApplication


class UiForm(QWidget):
    def __init__(self):
        super().__init__()
        self.setup_ui(self)
        self.instrucciones()

    def instrucciones(self):

        self.mensaje = """\
        <h1>Instrucciones</h1>
        <p>Este es un validador de codigo para consultas PL/SQL
        <p>
        """

    def setup_ui(self, Form):
        Form.setObjectName("Form")
        Form.resize(1200, 820)
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap("src/database.svg"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        Form.setWindowIcon(icon)
        Form.setStyleSheet("background-color: #ffffff;")
        self.gridLayout = QtWidgets.QGridLayout(Form)
        self.gridLayout.setContentsMargins(35, 35, 35, 35)
        self.gridLayout.setSpacing(0)
        self.gridLayout.setObjectName("gridLayout")
        self.tableView = QtWidgets.QTableView(Form)
        self.tableView.setMaximumSize(QtCore.QSize(16777215, 385))
        self.tableView.setStyleSheet("border: 2px solid #7e7e7e;\n"
                                     "border-color: rgb(214, 214, 214);\n"
                                     "border-radius: 8px;")
        self.tableView.setObjectName("tableView")
        self.gridLayout.addWidget(self.tableView, 2, 2, 1, 1)
        self.btn_query = QtWidgets.QPushButton(Form)
        self.btn_query.setText("")
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap("src/success.svg"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.btn_query.setIcon(icon)
        self.btn_query.setIconSize(QtCore.QSize(75, 75))
        self.btn_query.setFlat(True)
        self.btn_query.setStyleSheet("QPushButton:pressed {\n"
                                     "background-color: transparent;\n"
                                     "border: none;\n"
                                     "}")
        self.btn_query.setObjectName("btn_query")
        self.gridLayout.addWidget(self.btn_query, 3, 1, 1, 1)
        self.txt_query = QtWidgets.QPlainTextEdit(Form)
        self.txt_query.setMaximumSize(QtCore.QSize(16777215, 385))
        font = QtGui.QFont()
        font.setFamily("DejaVu Sans Mono")
        font.setPointSize(14)
        self.txt_query.setFont(font)
        self.txt_query.setObjectName("txt_query")
        self.txt_query.setStyleSheet("border: 2px solid #7e7e7e;\n"
                                     "border-color: rgb(214, 214, 214);\n"
                                     "border-radius: 8px;")
        self.gridLayout.addWidget(self.txt_query, 2, 0, 1, 1)
        self.label = QtWidgets.QLabel(Form)
        self.label.setMaximumSize(QtCore.QSize(16777215, 150))
        font = QtGui.QFont()
        font.setFamily("Helvetica Neue")
        font.setPointSize(64)
        font.setBold(False)
        font.setItalic(False)
        font.setWeight(1)
        stl_encabezados = """font: 18pt \"Roboto\";\n
                          background-color: rgb(48, 63, 159);\n
                          color: rgb(255, 255, 255);"""
        self.label.setFont(font)
        self.label.setStyleSheet("font: 11 64pt \"Helvetica Neue\";")
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 0, 1, 3)
        self.lbl_enc_cod = QtWidgets.QLabel(Form)
        self.lbl_enc_cod.setMaximumSize(QtCore.QSize(16777215, 50))
        self.lbl_enc_cod.setStyleSheet(stl_encabezados)
        self.lbl_enc_cod.setAlignment(QtCore.Qt.AlignCenter)
        self.lbl_enc_cod.setObjectName("lbl_enc_cod")
        self.gridLayout.addWidget(self.lbl_enc_cod, 1, 0, 1, 1)
        self.ico_res = QtWidgets.QLabel(Form)
        self.ico_res.setText("")
        self.ico_res.setPixmap(QtGui.QPixmap("src/equal-1.svg"))
        self.ico_res.setAlignment(QtCore.Qt.AlignCenter)
        self.ico_res.setObjectName("ico_res")
        self.gridLayout.addWidget(self.ico_res, 1, 1, 2, 1)
        self.lbl_enc_res = QtWidgets.QLabel(Form)
        self.lbl_enc_res.setMaximumSize(QtCore.QSize(16777215, 50))
        self.lbl_enc_res.setStyleSheet(stl_encabezados)
        self.lbl_enc_res.setAlignment(QtCore.Qt.AlignCenter)
        self.lbl_enc_res.setObjectName("lbl_enc_res")
        self.gridLayout.addWidget(self.lbl_enc_res, 1, 2, 1, 1)
        self.btn_query.clicked['bool'].connect(self.query)

        self.retranslate_ui(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslate_ui(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "Comprobador"))
        self.txt_query.setPlainText(_translate("Form", "SELECT *\n"
                                                       "FROM autos\n"
                                                       "WHERE"))
        self.label.setText(_translate("Form", "Pregunta a hacer"))
        self.lbl_enc_cod.setText(_translate("Form", "Código"))
        self.lbl_enc_res.setText(_translate("Form", "Resultado"))

    def query(self):
        import comprobador.comprobador as comp
        self.busq = self.txt_query.toPlainText()
        for i in range(len(self.busq)):
            self.busq = self.busq.replace('\n', ' ')
            self.busq = self.busq.replace('  ', ' ')
        self.busq = self.busq.split(' ')
        print(self.busq)
        print(comp.texto(self.busq))


if __name__ == '__main__':
    import sys

    app = QApplication(sys.argv)
    x = UiForm()
    x.show()
    sys.exit(app.exec_())
