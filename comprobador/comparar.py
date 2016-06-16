import base_datos.preguntas as preguntas


def comp(contador, consulta):
    res1 = []
    res2 = []
    if contador == 1:
        for i in range(len(preguntas.pregunta_1())):
            res1.append(i)
            for j in range(len(consulta)):
                res2.append(j)
                if i is j:
                    return True
