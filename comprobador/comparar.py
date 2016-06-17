import base_datos.preguntas as preguntas


def comp(contador, cons_res):
    res1 = []
    res2 = []

    if contador == 1:
        for i in preguntas.pregunta_1():
            res1.append(i)
        for j in cons_res:
            res2.append(j)
        print("Comparando res1")
        print(res1)
        print("Comparando res2")
        print(res2)
        if res1.sort() == res2.sort():
            res1.clear()
            res2.clear()
            return True

    elif contador == 2:
        for i in preguntas.pregunta_2():
            res1.append(i)
        for j in cons_res:
            res2.append(j)
        if res1.sort() == res2.sort():
            res1.clear()
            res2.clear()
            return True

    elif contador == 3:
        for i in preguntas.pregunta_3():
            res1.append(i)
        for j in cons_res:
            res2.append(j)
        if res1.sort() == res2.sort():
            res1.clear()
            res2.clear()
            return True

    elif contador == 4:
        for i in preguntas.pregunta_4():
            res1.append(i)
        for j in cons_res:
            res2.append(j)
        if res1.sort() == res2.sort():
            res1.clear()
            res2.clear()
            return True

    else:
        return False
