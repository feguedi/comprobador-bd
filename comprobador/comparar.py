from PyQt5.QtWidgets import QMessageBox
import base_datos.preguntas as preguntas


def comp(contador, cons_res):
    res1 = []
    res2 = []

    if contador == 1:
        for i in preguntas.pregunta_1():
            res1.append(i)
        for j in cons_res:
            res2.append(j)
        if res1.sort() == res2.sort():
            res1.clear()
            res2.clear()
            msj_comprobacion(True)

    elif contador == 2:
        for i in preguntas.pregunta_2():
            res1.append(i)
        for j in cons_res:
            res2.append(j)
        if res1.sort() == res2.sort():
            res1.clear()
            res2.clear()
            msj_comprobacion(True)

    elif contador == 3:
        for i in preguntas.pregunta_3():
            res1.append(i)
        for j in cons_res:
            res2.append(j)
        if res1.sort() == res2.sort():
            res1.clear()
            res2.clear()
            msj_comprobacion(True)

    elif contador == 4:
        for i in preguntas.pregunta_4():
            res1.append(i)
        for j in cons_res:
            res2.append(j)
        if res1.sort() == res2.sort():
            res1.clear()
            res2.clear()
            msj_comprobacion(True)

    else:
        msj_comprobacion(False)


def msj_comprobacion(valor_res):
    if valor_res:
        QMessageBox.about(None, 'Correcto', 'Tu respuesta es correcta', QMessageBox.Close)
        return True
    elif not valor_res:
        QMessageBox.about(None, 'Incorrecto', 'Tu respuesta es incorrecta. Inténtalo nuevamente', QMessageBox.Close)
        return False
