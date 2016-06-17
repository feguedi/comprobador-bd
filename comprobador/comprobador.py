# Objeto x debe ser una lista
def texto(x):
    iterador = len(x)
    print(iterador)
    for i in range(iterador):
        print("Evaluando:", x[i])
        if x[i] is "DELETE" or x[i] is "ALTER" or x[i] is "DROP" or x[i] is "CREATE":
            return False
        elif x[i] is "delete" or x[i] is "alter" or x[i] is "drop" or x[i] is "create":
            return False
        else:
            return True
