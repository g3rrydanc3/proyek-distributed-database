-- -----------------------------------------------------
-- Table room_type
-- -----------------------------------------------------
CREATE TABLE room_type (
  room_type_id NUMBER(10) NOT NULL,
  room_type VARCHAR2(100) NOT NULL,
  description VARCHAR2(100) NOT NULL,
  capacity NUMBER(3) NOT NULL,
  price NUMBER(10) NOT NULL,
  PRIMARY KEY (room_type_id))
;


-- -----------------------------------------------------
-- Table room
-- -----------------------------------------------------
CREATE TABLE room (
  room_no NUMBER(10) NOT NULL,
  type_id NUMBER(10) NOT NULL,
  status NUMBER(3) NOT NULL,
  PRIMARY KEY (room_no)
  CREATE INDEX fk_room_room_type_idx ON room (type_id ASC),
  CONSTRAINT fk_room_room_type
    FOREIGN KEY (type_id)
    REFERENCES room_type (room_type_id)
   )
;


-- -----------------------------------------------------
-- Table customer
-- -----------------------------------------------------
CREATE TABLE customer (
  customer_id NUMBER(10) NOT NULL,
  first_name VARCHAR2(100) NOT NULL,
  last_name VARCHAR2(100) NOT NULL,
  address VARCHAR2(100) NOT NULL,
  phone VARCHAR2(20) NOT NULL,
  PRIMARY KEY (customer_id))
;


-- -----------------------------------------------------
-- Table bill
-- -----------------------------------------------------
CREATE TABLE bill (
  bill_id NUMBER(10) NOT NULL,
  customer_id NUMBER(10) NOT NULL,
  room_no NUMBER(10) NOT NULL,
  total NUMBER(10) NOT NULL,
  PRIMARY KEY (bill_id)
  CREATE INDEX fk_bill_customer1_idx ON bill (customer_id ASC)
  CREATE INDEX fk_bill_room1_idx ON bill (room_no ASC),
  CONSTRAINT fk_bill_customer1
    FOREIGN KEY (customer_id)
    REFERENCES customer (customer_id)
   ,
  CONSTRAINT fk_bill_room1
    FOREIGN KEY (room_no)
    REFERENCES room (room_no)
   )
;


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
-- Table payment
-- -----------------------------------------------------
CREATE TABLE payment (
  payment_id NUMBER(10) NOT NULL,
  employee_id NUMBER(10) NOT NULL,
  bill_id NUMBER(10) NOT NULL,
  customer_id NUMBER(10) NOT NULL,
  payment_date TIMESTAMP NOT NULL,
  payment_method VARCHAR2(100) NOT NULL,
  card_no NUMBER(10) NULL,
  PRIMARY KEY (payment_id)
  CREATE INDEX fk_payment_customer1_idx ON payment (customer_id ASC)
  CREATE INDEX fk_payment_bill1_idx ON payment (bill_id ASC)
  CREATE INDEX fk_payment_employee1_idx ON payment (employee_id ASC),
  CONSTRAINT fk_payment_customer1
    FOREIGN KEY (customer_id)
    REFERENCES customer (customer_id)
   ,
  CONSTRAINT fk_payment_bill1
    FOREIGN KEY (bill_id)
    REFERENCES bill (bill_id)
   ,
  CONSTRAINT fk_payment_employee1
    FOREIGN KEY (employee_id)
    REFERENCES employee (employee_id)
   )
;


-- -----------------------------------------------------
-- Table service
-- -----------------------------------------------------
CREATE TABLE service (
  service_id NUMBER(10) NOT NULL,
  room_no NUMBER(10) NOT NULL,
  service_type VARCHAR2(45) NOT NULL,
  service_date TIMESTAMP NOT NULL,
  total NUMBER(10) NOT NULL,
  PRIMARY KEY (service_id)
  CREATE INDEX fk_service_room1_idx ON service (room_no ASC),
  CONSTRAINT fk_service_room1
    FOREIGN KEY (room_no)
    REFERENCES room (room_no)
   )
;


-- -----------------------------------------------------
-- Table bill_detail
-- -----------------------------------------------------
CREATE TABLE bill_detail (
  bill_detail_id NUMBER(10) NOT NULL,
  payment_id NUMBER(10) NOT NULL,
  service_id NUMBER(10) NOT NULL,
  PRIMARY KEY (bill_detail_id)
  CREATE INDEX fk_bill_detail_payment1_idx ON bill_detail (payment_id ASC)
  CREATE INDEX fk_bill_detail_service1_idx ON bill_detail (service_id ASC),
  CONSTRAINT fk_bill_detail_payment1
    FOREIGN KEY (payment_id)
    REFERENCES payment (payment_id)
   ,
  CONSTRAINT fk_bill_detail_service1
    FOREIGN KEY (service_id)
    REFERENCES service (service_id)
   )
;