# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'caja.ui'
#
# Created by: PyQt5 UI code generator 5.5.1
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QApplication, QWidget


class UiForm(QWidget):
    def __init__(self):
        super().__init__()
        self.setup_ui(self)
        self.lst_predict = QtWidgets.QCompleter()

    def setup_ui(self, Form):
        Form.setObjectName("Form")
        Form.resize(600, 400)
        Form.setMinimumSize(QtCore.QSize(600, 400))
        Form.setMaximumSize(QtCore.QSize(600, 400))
        Form.setLocale(QtCore.QLocale(QtCore.QLocale.Spanish, QtCore.QLocale.Mexico))
        self.verticalLayout = QtWidgets.QVBoxLayout(Form)
        self.verticalLayout.setObjectName("verticalLayout")
        font = QtGui.QFont()
        # font.setFamily("/src/fonts/.ttf")
        font.setPointSize(24)
        self.plainTextEdit = QtWidgets.QPlainTextEdit(Form)
        self.plainTextEdit.setFrameShape(QtWidgets.QFrame.Box)
        self.plainTextEdit.setFont(font)
        self.plainTextEdit.setStyleSheet('font-family: "src/fonts/Roboto-Light.ttf";')
        self.plainTextEdit.setObjectName("plainTextEdit")
        self.verticalLayout.addWidget(self.plainTextEdit)

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "Previo a predictivo"))
        self.plainTextEdit.setPlainText(_translate("Form", "SELECT *\n"
                                                           "FROM"))

if __name__ == '__main__':
    import sys
    app = QApplication(sys.argv)
    x = UiForm()
    x.show()
    sys.exit(app.exec_())
