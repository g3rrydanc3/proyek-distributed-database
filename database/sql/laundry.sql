-- -----------------------------------------------------
-- Table employee
-- -----------------------------------------------------
CREATE TABLE employee (
  employee_id NUMBER(10) NOT NULL,
  first_name VARCHAR2(100) NOT NULL,
  last_name VARCHAR2(100) NOT NULL,
  username VARCHAR2(100) NOT NULL,
  password VARCHAR2(100) NOT NULL,
  PRIMARY KEY (employee_id),
  CONSTRAINT username_UNIQUE UNIQUE  (username))
;


-- -----------------------------------------------------
-- Table laundry_bill
-- -----------------------------------------------------
CREATE TABLE laundry_bill (
  laundry_bill_id NUMBER(10) NOT NULL,
  room_no NUMBER(10) NOT NULL,
  employee_id NUMBER(10) NOT NULL,
  total NUMBER(10) NOT NULL,
  status NUMBER(3) NOT NULL,
  bill_date TIMESTAMP NOT NULL,
  PRIMARY KEY (laundry_bill_id)
  CREATE INDEX fk_laundry_bill_employee_idx ON laundry_bill (employee_id ASC),
  CONSTRAINT fk_laundry_bill_employee
    FOREIGN KEY (employee_id)
    REFERENCES employee (employee_id)
   )
;


-- -----------------------------------------------------
-- Table laundry_service
-- -----------------------------------------------------
CREATE TABLE laundry_service (
  laundry_service_id NUMBER(10) NOT NULL,
  service_type VARCHAR2(45) NOT NULL,
  price NUMBER(10) NOT NULL,
  PRIMARY KEY (laundry_service_id))
;


-- -----------------------------------------------------
-- Table laundry_bill_detail
-- -----------------------------------------------------
CREATE TABLE laundry_bill_detail (
  laundry_bill_detail_id NUMBER(10) NOT NULL,
  laundry_bill_id NUMBER(10) NOT NULL,
  laundry_service_id NUMBER(10) NOT NULL,
  weight NUMBER(3) NOT NULL,
  price NUMBER(10) NOT NULL,
  PRIMARY KEY (laundry_bill_detail_id)
  CREATE INDEX fk_laundry_bill_detail_laundry_bill1_idx ON laundry_bill_detail (laundry_bill_id ASC)
  CREATE INDEX fk_laundry_bill_detail_laundry_service1_idx ON laundry_bill_detail (laundry_service_id ASC),
  CONSTRAINT fk_laundry_bill_detail_laundry_bill1
    FOREIGN KEY (laundry_bill_id)
    REFERENCES laundry_bill (laundry_bill_id)
   ,
  CONSTRAINT fk_laundry_bill_detail_laundry_service1
    FOREIGN KEY (laundry_service_id)
    REFERENCES laundry_service (laundry_service_id)
   )
;