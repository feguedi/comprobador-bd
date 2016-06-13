# Objeto x debe ser una lista
def texto(x):
    for i in range(len(x)):
        if x[i] == "DELETE" or x[i] == "ALTER" or x[i] == "DROP" or x[i] == "CREATE" or x[i] == "delete" or x[i] == "alter" or x[i] == "drop" or x[i] == "create":
            return False
        else:
            return True
