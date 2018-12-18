connect system/123@laundry

drop user adminlaundry cascade;
drop user employeelaundry cascade;

create user adminlaundry identified by admin;
grant connect, UNLIMITED TABLESPACE, resource to adminlaundry;

create user employeelaundry identified by employee;
grant connect to employeelaundry;

connect adminlaundry/admin@laundry

--DROP TABLE laundry_bill CASCADE CONSTRAINT PURGE;
--DROP TABLE laundry_service CASCADE CONSTRAINT PURGE;
--DROP TABLE laundry_bill_detail CASCADE CONSTRAINT PURGE;

-- -----------------------------------------------------
-- Table laundry_bill
-- -----------------------------------------------------
CREATE TABLE laundry_bill (
  laundry_bill_id VARCHAR2(10) CONSTRAINT PK_LAUNDRY_BILL_1 PRIMARY KEY (laundry_bill_id),
  room_no NUMBER(10) CONSTRAINT NN_LAUNDRY_BILL_1 NOT NULL,
  employee_id NUMBER(10) CONSTRAINT NN_LAUNDRY_BILL_2 NOT NULL,
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
  laundry_bill_detail_id NUMBER(10),
  laundry_bill_id NUMBER(10) CONSTRAINT PK_LAUNDRY_BILL_DETAIL_2 NOT NULL,
  laundry_service_id NUMBER(10) CONSTRAINT PK_LAUNDRY_BILL_DETAIL_3 NOT NULL,
  weight NUMBER(3) CONSTRAINT NN_LAUNDRY_BILL_DETAIL_1 NOT NULL,
  price NUMBER(10) CONSTRAINT NN_LAUNDRY_BILL_DETAIL_2 NOT NULL,
  CONSTRAINT PK_LAUNDRY_BILL_DETAIL_1 PRIMARY KEY (laundry_bill_detail_id),
  CONSTRAINT fk_laundry_bill_detail_1
    FOREIGN KEY (laundry_bill_id)
    REFERENCES laundry_bill (laundry_bill_id)
   ,
  CONSTRAINT fk_laundry_bill_detail_2
    FOREIGN KEY (laundry_service_id)
    REFERENCES laundry_service (laundry_service_id)
   )
;