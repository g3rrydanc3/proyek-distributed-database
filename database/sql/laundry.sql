connect system/123@laundry

drop user adminlaundry cascade;

create user adminlaundry identified by admin;
grant connect, UNLIMITED TABLESPACE, resource, create user to adminlaundry WITH ADMIN OPTION;
grant dba to adminlaundry;
grant create public database link to adminlaundry;
connect adminlaundry/admin@laundry

create public database link keFrontOffice
connect to adminfrontoffice identified by admin
using 'FrontOffice';

--DROP TABLE laundry_bill CASCADE CONSTRAINT PURGE;
--DROP TABLE laundry_service CASCADE CONSTRAINT PURGE;
--DROP TABLE laundry_bill_detail CASCADE CONSTRAINT PURGE;

-- -----------------------------------------------------
-- Table laundry_bill
-- -----------------------------------------------------
CREATE TABLE laundry_bill (
  laundry_bill_id VARCHAR2(10) CONSTRAINT PK_LAUNDRY_BILL_1 PRIMARY KEY,
  room_no NUMBER(10) CONSTRAINT NN_LAUNDRY_BILL_1 NOT NULL,
  employee_id VARCHAR2(5) CONSTRAINT NN_LAUNDRY_BILL_2 NOT NULL,
  total NUMBER(10) CONSTRAINT NN_LAUNDRY_BILL_3 NOT NULL,
  bill_date TIMESTAMP CONSTRAINT NN_LAUNDRY_BILL_4 NOT NULL
);


-- -----------------------------------------------------
-- Table laundry_service
-- -----------------------------------------------------
CREATE TABLE laundry_service (
  laundry_service_id NUMBER(10),
  service_type VARCHAR2(45) CONSTRAINT NN_LAUNDRY_SERVICE_1 NOT NULL,
  price NUMBER(10) CONSTRAINT NN_LAUNDRY_SERVICE_2 NOT NULL,
  CONSTRAINT PK_LAUNDRY_SERVICE_1 PRIMARY KEY (laundry_service_id))
;


-- -----------------------------------------------------
-- Table laundry_bill_detail
-- -----------------------------------------------------
CREATE TABLE laundry_bill_detail (
  laundry_bill_detail_id VARCHAR2(14) PRIMARY KEY,
  laundry_bill_id VARCHAR2(10) CONSTRAINT PK_LAUNDRY_BILL_DETAIL_2 NOT NULL,
  laundry_service_id NUMBER(10) CONSTRAINT PK_LAUNDRY_BILL_DETAIL_3 NOT NULL,
  weight NUMBER(3) CONSTRAINT NN_LAUNDRY_BILL_DETAIL_1 NOT NULL,
  price NUMBER(10) CONSTRAINT NN_LAUNDRY_BILL_DETAIL_2 NOT NULL,
  CONSTRAINT fk_laundry_bill_detail_1
    FOREIGN KEY (laundry_bill_id)
    REFERENCES laundry_bill (laundry_bill_id)
   ,
  CONSTRAINT fk_laundry_bill_detail_2
    FOREIGN KEY (laundry_service_id)
    REFERENCES laundry_service (laundry_service_id)
   )
;