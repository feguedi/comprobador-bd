SELECT 	STOCK.CANTIDAD AS "Cantidad_Spark", DISTRIBUIDOR.NOMBRE
FROM DISTRIBUIDOR 
INNER JOIN STOCK
on STOCK.ID_DIS = DISTRIBUIDOR.ID_DIS
WHERE STOCK.ID_CAR = 963;

SELECT STOCK.CANTIDAD AS "cantidad_jetta", DISTRIBUIDOR.NOMBRE, car.color
FROM distribuidor 
inner JOIN stock 
on STOCK.ID_DIS = DISTRIBUIDOR.ID_DIS
inner JOIN car
on STOCK.ID_car = car.ID_car
WHERE stock.ID_car = 963 OR
	  stock.ID_car = 753 OR
	  car.color = 'cafe' OR
	  car.color = 'violeta' AND
	  distribuidor.nombre = 'Automotors' OR
	  distribuidor.nombre = 'Motorsort';

SELECT carro.nombre, distribuidor.nombre
FROM distribuidor
[NATURAL JOIN carro]
[JOIN carro USING (carro.modelo)]
ON (carro.modelo = "2010");

 // pregunta 3 rafa
SELECT CAR.VERSION AS "versiondes del modelo Coupe", DISTRIBUIDOR.NOMBRE
FROM CAR
inner JOIN DISTRIBUIDOR 
on DISTRIBUIDOR.ID_DIS = STOCK.ID_DIS
inner JOIN STOCK
on STOCK.ID_car = car.ID_car
WHERE CAR.MODELO= "Coupé";

// PREGUNTA 3 leo
SELECT carro.ID_CAR, carro.NOMBRE, carro.MODELO, stock.CANTIDAD, carro.COLOR, DISTRIBUIDOR.UBICACION FROM carro 
    INNER JOIN STOCK ON STOCK.ID_CAR = carro.ID_CAR
    INNER JOIN DISTRIBUIDOR ON DISTRIBUIDOR.ID_DIS = STOCK.ID_DIS
    WHERE carro.ID_MAR = 102;
    // posible pregunta 4
    SELECT CARRO.ID_CAR, CARRO.NOMBRE, CARRO.COLOR, STOCK.CANTIDAD, DISTRIBUIDOR.UBICACION
from CARRO
INNER JOIN STOCK ON STOCK.ID_CAR = CARRO.ID_CAR
INNER JOIN DISTRIBUIDOR ON DISTRIBUIDOR.ID_DIS = STOCK.ID_DIS
WHERE COLOR = 'cafe' and STOCK.CANTIDAD > 0;

