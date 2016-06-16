--------------------------------------------------------
-- Archivo creado  - jueves-junio-16-2016   
--------------------------------------------------------
REM INSERTING into SYSTEM.CARRO
SET DEFINE OFF;
Insert into SYSTEM.CARRO (ID_CAR,NOMBRE,"AÑO",TIPO,VERSION,COLOR,MODELO,ID_MAR) values (123,'SEAT Sport',1975,'turistico','Sport','verde','143 sport',489);
Insert into SYSTEM.CARRO (ID_CAR,NOMBRE,"AÑO",TIPO,VERSION,COLOR,MODELO,ID_MAR) values (753,'Chevrolet Isuzu',1989,'turistico','Isuzu','naranja','Passport',487);
Insert into SYSTEM.CARRO (ID_CAR,NOMBRE,"AÑO",TIPO,VERSION,COLOR,MODELO,ID_MAR) values (962,'Fiat Coupé',1992,'deportivo','Coupé','gris','20V Turbo',102);
Insert into SYSTEM.CARRO (ID_CAR,NOMBRE,"AÑO",TIPO,VERSION,COLOR,MODELO,ID_MAR) values (963,'Fiat Coupé',1993,'deportivo','Coupé','azul','20V Turbo',102);
Insert into SYSTEM.CARRO (ID_CAR,NOMBRE,"AÑO",TIPO,VERSION,COLOR,MODELO,ID_MAR) values (234,'Nissan 208 ZX',1978,'deportivo','Datsun','rojo','280 ZX',258);
REM INSERTING into SYSTEM.DISTRIBUIDOR
SET DEFINE OFF;
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (963,'Guanajuato, San Miguel Allende','CarFast',149);
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (102,'Yucatan, Medira','MotorSpeed',103);
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (489,'Queretaro, Queretaro','Motorsort',987);
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (487,'Queretaro, Juriquilla','Automotors',486);
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (102,'Queretaro, San Juan del Rio','Automators',1574);
REM INSERTING into SYSTEM.MARCA
SET DEFINE OFF;
Insert into SYSTEM.MARCA (ID_MAR,NOMBRE,CATEGORIA) values (489,'Seat','SEAT sport');
Insert into SYSTEM.MARCA (ID_MAR,NOMBRE,CATEGORIA) values (487,'Chevrolet','Chevrolet Cruze');
Insert into SYSTEM.MARCA (ID_MAR,NOMBRE,CATEGORIA) values (258,'Nissan','280 ZX');
Insert into SYSTEM.MARCA (ID_MAR,NOMBRE,CATEGORIA) values (102,'Fiat','Sport');
REM INSERTING into SYSTEM.STOCK
SET DEFINE OFF;
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS) values (123,2,987);
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS) values (234,11,654);
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS) values (963,10,987);
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS) values (753,14,486);
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS) values (962,5,1574);
