SELECT 	STOCK.CANTIDAD AS "Cantidad_Spark", DISTRIBUIDOR.NOMBRE
FROM DISTRIBUIDOR 
INNER JOIN STOCK
on STOCK.ID_DIS = DISTRIBUIDOR.ID_DIS
WHERE STOCK.ID_CAR = 963;

SELECT stock.cantidad AS "cantidad_jetta", distribuidor.nombre, carro.color
FROM distribuidor JOIN stock JOIN carro
USING (stock.ID_carro)
WHERE stock.ID_carro = "10101" AND
	  carro.color = "blanco" AND
	  carro.color = "negro" AND
	  distribuidor.nombre = "x" AND
	  distribuidor.nombre = "y";

SELECT carro.nombre, distribuidor.nombre
FROM distribuidor
[NATURAL JOIN carro]
[JOIN carro USING (carro.modelo)]
ON (carro.modelo = "2010");