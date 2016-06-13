--------------------------------------------------------
-- Archivo creado  - jueves-junio-09-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table STOCK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."STOCK" 
   (	"ID_CAR" NUMBER(*,0), 
	"CANTIDAD" NUMBER(*,0), 
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
	"CATEGORIA" VARCHAR2(15 BYTE), 
	"MODELO" VARCHAR2(20 BYTE)
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
--  DDL for Table CAR
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CAR" 
   (	"ID_CAR" NUMBER(*,0), 
	"COLOR" VARCHAR2(10 BYTE), 
	"ID_MAR" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.STOCK
SET DEFINE OFF;
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS) values (123,2,987);
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS) values (234,11,654);
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS) values (963,10,987);
Insert into SYSTEM.STOCK (ID_CAR,CANTIDAD,ID_DIS) values (753,14,486);
REM INSERTING into SYSTEM.MARCA
SET DEFINE OFF;
Insert into SYSTEM.MARCA (ID_MAR,NOMBRE,CATEGORIA,MODELO) values (489,'Seat','SEAT ateca','SEAT 20v20 ');
Insert into SYSTEM.MARCA (ID_MAR,NOMBRE,CATEGORIA,MODELO) values (487,'Chevrolet','Chevrolet Cruze','Chevrolet Cruze 5');
Insert into SYSTEM.MARCA (ID_MAR,NOMBRE,CATEGORIA,MODELO) values (258,'Nissan','280 ZX','T-top');
Insert into SYSTEM.MARCA (ID_MAR,NOMBRE,CATEGORIA,MODELO) values (102,'BMW','Serie 1','E88 ');
REM INSERTING into SYSTEM.DISTRIBUIDOR
SET DEFINE OFF;
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (963,'Guanajuato, San Miguel Allende','CarFast',149);
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (102,'Yucatan, Medira','MotorSpeed',103);
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (489,'Queretaro, Queretaro','Motorsort',987);
Insert into SYSTEM.DISTRIBUIDOR (ID_MAR,UBICACION,NOMBRE,ID_DIS) values (487,'Queretaro, Juriquilla','Automotors',486);
REM INSERTING into SYSTEM.CAR
SET DEFINE OFF;
Insert into SYSTEM.CAR (ID_CAR,COLOR,ID_MAR) values (123,'Rojo',489);
Insert into SYSTEM.CAR (ID_CAR,COLOR,ID_MAR) values (234,'Azul',487);
Insert into SYSTEM.CAR (ID_CAR,COLOR,ID_MAR) values (963,'Violeta',258);
Insert into SYSTEM.CAR (ID_CAR,COLOR,ID_MAR) values (753,'Cafe',102);
--------------------------------------------------------
--  DDL for Index STOCK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."STOCK_PK" ON "SYSTEM"."STOCK" ("ID_CAR", "ID_DIS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MARCA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MARCA_PK" ON "SYSTEM"."MARCA" ("ID_MAR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."ID" ON "SYSTEM"."CAR" ("ID_MAR", "ID_CAR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table STOCK
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."STOCK" ADD CONSTRAINT "STOCK_PK" PRIMARY KEY ("ID_CAR", "ID_DIS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."STOCK" MODIFY ("ID_DIS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."STOCK" MODIFY ("CANTIDAD" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."STOCK" MODIFY ("ID_CAR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MARCA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MARCA" ADD CONSTRAINT "MARCA_PK" PRIMARY KEY ("ID_MAR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."MARCA" MODIFY ("MODELO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MARCA" MODIFY ("CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MARCA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MARCA" MODIFY ("ID_MAR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DISTRIBUIDOR
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DISTRIBUIDOR" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DISTRIBUIDOR" MODIFY ("UBICACION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DISTRIBUIDOR" MODIFY ("ID_MAR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DISTRIBUIDOR" MODIFY ("ID_DIS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CAR
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CAR" ADD CONSTRAINT "ID" PRIMARY KEY ("ID_MAR", "ID_CAR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."CAR" MODIFY ("ID_MAR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CAR" MODIFY ("COLOR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CAR" MODIFY ("ID_CAR" NOT NULL ENABLE);
