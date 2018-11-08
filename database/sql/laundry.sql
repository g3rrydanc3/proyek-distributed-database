connect system/123@laundry

drop user adminlaundry cascade;
drop user employeelaundry cascade;

create user adminlaundry identified by admin;
grant connect, UNLIMITED TABLESPACE, resource to adminlaundry;

create user employeelaundry identified by employee;
grant connect to employeelaundry;

-- -----------------------------------------------------
-- Table employee
-- -----------------------------------------------------
CREATE TABLE employee (
  employee_id NUMBER(10),
  first_name VARCHAR2(100) CONSTRAINT NN_EMPLOYEE_FIRST_NAME NOT NULL,
  last_name VARCHAR2(100) CONSTRAINT NN_EMPLOYEE_LAST_NAME NOT NULL,
  username VARCHAR2(100) CONSTRAINT NN_EMPLOYEE_USERNAME NOT NULL,
  password VARCHAR2(100) CONSTRAINT NN_EMPLOYEE_PASSWORD NOT NULL,
  CONSTRAINT PK_EMPLOYEE_EMPLOYEE_ID PRIMARY KEY (employee_id),
  CONSTRAINT username_UNIQUE UNIQUE  (username))
;


-- -----------------------------------------------------
-- Table laundry_bill
-- -----------------------------------------------------
CREATE TABLE laundry_bill (
  laundry_bill_id NUMBER(10),
  room_no NUMBER(10) CONSTRAINT NN_LAUNDRY_BILL_ROOM_NO NOT NULL,
  employee_id NUMBER(10) CONSTRAINT NN_LAUNDRY_BILL_EMPLOYEE_ID NOT NULL,
  total NUMBER(10) CONSTRAINT NN_LAUNDRY_BILL_TOTAL NOT NULL,
  status NUMBER(3) CONSTRAINT NN_LAUNDRY_BILL_STATUS NOT NULL,
  bill_date TIMESTAMP CONSTRAINT NN_LAUNDRY_BILL_BILL_DATE NOT NULL,
  CONSTRAINT PK_LAUNDRY_BILL_LAUNDRY_BILL_ID PRIMARY KEY (laundry_bill_id),
  CONSTRAINT fk_laundry_bill_employee
    FOREIGN KEY (employee_id)
    REFERENCES employee (employee_id)
   )
;


-- -----------------------------------------------------
-- Table laundry_service
-- -----------------------------------------------------
CREATE TABLE laundry_service (
  laundry_service_id NUMBER(10),
  service_type VARCHAR2(45) CONSTRAINT NN_LAUNDRY_SERVICE_SERVICE_TYPE NOT NULL,
  price NUMBER(10) CONSTRAINT NN_LAUNDRY_SERVICE_PRICE NOT NULL,
  CONSTRAINT PK_LAUNDRY_SERVICE_LAUNDRY_SERVICE_ID PRIMARY KEY (laundry_service_id))
;


-- -----------------------------------------------------
-- Table laundry_bill_detail
-- -----------------------------------------------------
CREATE TABLE laundry_bill_detail (
  laundry_bill_detail_id NUMBER(10),
  laundry_bill_id NUMBER(10) CONSTRAINT PK_LAUNDRY_BILL_DETAIL_LAUNDRY_BILL_ID NOT NULL,
  laundry_service_id NUMBER(10) CONSTRAINT PK_LAUNDRY_BILL_DETAIL_LAUNDRY_SERVICE_ID NOT NULL,
  weight NUMBER(3) CONSTRAINT PK_LAUNDRY_BILL_DETAIL_WEIGHT NOT NULL,
  price NUMBER(10) CONSTRAINT PK_LAUNDRY_BILL_DETAIL_PRICE NOT NULL,
  CONSTRAINT PK_LAUNDRY_BILL_DETAIL_LAUNDRY_BILL_DETAIL_ID PRIMARY KEY (laundry_bill_detail_id),
  CONSTRAINT fk_laundry_bill_detail_laundry_bill1
    FOREIGN KEY (laundry_bill_id)
    REFERENCES laundry_bill (laundry_bill_id)
   ,
  CONSTRAINT fk_laundry_bill_detail_laundry_service1
    FOREIGN KEY (laundry_service_id)
    REFERENCES laundry_service (laundry_service_id)
   )
;