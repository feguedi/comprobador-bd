--------------------------------------------------------
-- Archivo creado  - jueves-junio-16-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CARRO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CARRO" 
   (	"ID_CAR" NUMBER(10,0), 
	"NOMBRE" VARCHAR2(20 BYTE), 
	"A�O" NUMBER(10,0), 
	"TIPO" VARCHAR2(14 BYTE), 
	"VERSION" VARCHAR2(10 BYTE), 
	"COLOR" VARCHAR2(10 BYTE), 
	"MODELO" VARCHAR2(10 BYTE), 
	"ID_MAR" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DISTRIBUIDOR
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."DISTRIBUIDOR" 
   (	"ID_MAR" NUMBER(*,0), 
	"UBICACION" VARCHAR2(30 BYTE), 
	"NOMBRE" VARCHAR2(20 BYTE), 
	"ID_DIS" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MARCA
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MARCA" 
   (	"ID_MAR" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(15 BYTE), 
	"CATEGORIA" VARCHAR2(15 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table STOCK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."STOCK" 
   (	"ID_CAR" NUMBER(*,0), 
	"CANTIDAD" NUMBER(*,0), 
	"ID_DIS" NUMBER(*,0), 
	"ID_MAR" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.CARRO
SET DEFINE OFF;
Insert into SYSTEM.CARRO (ID_CAR,NOMBRE,"A�O",TIPO,VERSION,COLOR,MODELO,ID_MAR) values (123,'SEAT Sport',1975,'turistico','Sport','verde','1430 Sport',489);
Insert into SYSTEM.CARRO (ID_CAR,NOMBRE,"A�O",TIPO,VERSION,COLOR,MODELO,ID_MAR) values (753,'Chevrolet Isuzu',1989,'turistico','Isuzu','gris','Passport',487);
Insert into SYSTEM.CARRO (ID_CAR,NOMBRE,"A�O",TIPO,VERSION,COLOR,MODELO,ID_MAR) values (962,'Fiat Coup�',1992,'deportivo','Coup�','negro','20V Turbo',102);
Insert into SYSTEM.CARRO (ID_CAR,NOMBRE,"A�O",TIPO,VERSION,COLOR,MODELO,ID_MAR) values (963,'Fiat Coup�',1993,'deportivo','Coup�','azul','20V Turbo',102);
Insert into SYSTEM.CARRO (ID_CAR,NOMBRE,"A�O",TIPO,VERSION,COLOR,MODELO,ID_MAR) values (234,'Nissan 280 ZX',1978,'deportivo','datsun','rojo','280 ZX',258);
REM INSERTING into SYSTEM.DISTRIBUIDOR
SET DEFINE OFF;
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (963,'Guanajuato, San Miguel Allende','CarFast',149);
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (102,'Yucatan, Medira','MotorSpeed',103);
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (489,'Queretaro, Queretaro','Motorsort',987);
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (487,'Queretaro, Juriquilla','Automotors',486);
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (102,'Queretaro, San Juan del Rio','Automators',1574);
REM INSERTING into SYSTEM.MARCA
SET DEFINE OFF;
Insert into SYSTEM.MARCA (ID_MAR,NOMBRE,CATEGORIA) values (489,'Seat','Sport');
Insert into SYSTEM.MARCA (ID_MAR,NOMBRE,CATEGORIA) values (487,'Chevrolet','Isuzu');
Insert into SYSTEM.MARCA (ID_MAR,NOMBRE,CATEGORIA) values (258,'Nissan','280 ZX');
Insert into SYSTEM.MARCA (ID_MAR,NOMBRE,CATEGORIA) values (102,'Fiat','Coup�');
REM INSERTING into SYSTEM.STOCK
SET DEFINE OFF;
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS,ID_MAR) values (123,2,987,489);
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS,ID_MAR) values (234,11,654,258);
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS,ID_MAR) values (753,14,486,487);
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS,ID_MAR) values (962,5,1574,102);
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS,ID_MAR) values (963,10,987,102);
--------------------------------------------------------
--  DDL for Index CARRO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CARRO_PK" ON "SYSTEM"."CARRO" ("ID_CAR", "ID_MAR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DISTRIBUIDOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."DISTRIBUIDOR_PK" ON "SYSTEM"."DISTRIBUIDOR" ("ID_MAR", "ID_DIS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MARCA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MARCA_PK" ON "SYSTEM"."MARCA" ("ID_MAR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index STOCK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."STOCK_PK" ON "SYSTEM"."STOCK" ("ID_CAR", "ID_DIS", "ID_MAR", "CANTIDAD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CARRO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CARRO" ADD CONSTRAINT "CARRO_PK" PRIMARY KEY ("ID_CAR", "ID_MAR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."CARRO" MODIFY ("COLOR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CARRO" MODIFY ("ID_MAR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CARRO" MODIFY ("VERSION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CARRO" MODIFY ("TIPO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CARRO" MODIFY ("MODELO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CARRO" MODIFY ("A�O" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CARRO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CARRO" MODIFY ("ID_CAR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DISTRIBUIDOR
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DISTRIBUIDOR" ADD CONSTRAINT "DISTRIBUIDOR_PK" PRIMARY KEY ("ID_MAR", "ID_DIS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."DISTRIBUIDOR" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DISTRIBUIDOR" MODIFY ("UBICACION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DISTRIBUIDOR" MODIFY ("ID_MAR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DISTRIBUIDOR" MODIFY ("ID_DIS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MARCA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MARCA" ADD CONSTRAINT "MARCA_PK" PRIMARY KEY ("ID_MAR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."MARCA" MODIFY ("CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MARCA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MARCA" MODIFY ("ID_MAR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STOCK
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."STOCK" ADD CONSTRAINT "STOCK_PK" PRIMARY KEY ("ID_CAR", "ID_DIS", "ID_MAR", "CANTIDAD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."STOCK" MODIFY ("ID_MAR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."STOCK" MODIFY ("ID_DIS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."STOCK" MODIFY ("CANTIDAD" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."STOCK" MODIFY ("ID_CAR" NOT NULL ENABLE);
