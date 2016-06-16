SELECT 	stock.cantidad AS "Cantidad_Spark", distribuidor.nombre
FROM distribuidor JOIN stock
USING (stock.ID_carro)
WHERE stock.ID_carro = "100101"

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
[NATURAL JOIN carro
[JOIN carro USING (carro.modelo)]
ON (carro.modelo = "2010");