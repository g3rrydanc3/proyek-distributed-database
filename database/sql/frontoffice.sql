-- -----------------------------------------------------
-- Table room_type
-- -----------------------------------------------------
CREATE TABLE room_type (
  room_type_id NUMBER(10),
  room_type VARCHAR2(100) CONSTRAINT NN_ROOM_TYPE_ROOM_TYPE NOT NULL,
  description VARCHAR2(100) CONSTRAINT NN_ROOM_TYPE_DESCRIPTION NOT NULL,
  capacity NUMBER(3) CONSTRAINT NN_ROOM_TYPE_CAPACITY NOT NULL,
  price NUMBER(10) CONSTRAINT NN_ROOM_TYPE_PRICE NOT NULL,
  CONSTRAINT PK_ROOM_TYPE_ROOM_TYPE_ID PRIMARY KEY (room_type_id))
;


-- -----------------------------------------------------
-- Table room
-- -----------------------------------------------------
CREATE TABLE room (
  room_no NUMBER(10),
  type_id NUMBER(10) CONSTRAINT NN_ROOM_TYPE_ID NOT NULL,
  status NUMBER(3) CONSTRAINT NN_ROOM_STATUS NOT NULL,
  CONSTRAINT PK_ROOM_ROOM_NO PRIMARY KEY (room_no),
  CONSTRAINT fk_room_room_type
    FOREIGN KEY (type_id)
    REFERENCES room_type (room_type_id)
   )
;


-- -----------------------------------------------------
-- Table customer
-- -----------------------------------------------------
CREATE TABLE customer (
  customer_id NUMBER(10),
  first_name VARCHAR2(100) CONSTRAINT NN_CUSTOMER_FIRST_NAME NOT NULL,
  last_name VARCHAR2(100) CONSTRAINT NN_CUSTOMER_LAST_NAME NOT NULL,
  address VARCHAR2(100) CONSTRAINT NN_CUSTOMER_ADDRESS NOT NULL,
  phone VARCHAR2(20) CONSTRAINT NN_CUSTOMER_PHONE NOT NULL,
  CONSTRAINT PK_CUSTOMER_CUSTOMER_ID PRIMARY KEY (customer_id))
;


-- -----------------------------------------------------
-- Table bill
-- -----------------------------------------------------
CREATE TABLE bill (
  bill_id NUMBER(10),
  customer_id NUMBER(10) CONSTRAINT NN_BILL_CUSTOMER_ID NOT NULL,
  room_no NUMBER(10) CONSTRAINT NN_BILL_ROOM_NO NOT NULL,
  total NUMBER(10) CONSTRAINT NN_BILL_TOTAL NOT NULL,
  CONSTRAINT PK_BILL_BILL_ID PRIMARY KEY (bill_id),
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
  employee_id NUMBER(10),
  first_name VARCHAR2(100) CONSTRAINT NN_EMPLOYEE_FIRST_NAME NOT NULL,
  last_name VARCHAR2(100) CONSTRAINT NN_EMPLOYEE_LAST_NAME NOT NULL,
  username VARCHAR2(100) CONSTRAINT NN_EMPLOYEE_USERNAME NOT NULL,
  password VARCHAR2(100) CONSTRAINT NN_EMPLOYEE_PASSWORD NOT NULL,
  CONSTRAINT PK_EMPLOYEE_EMPLOYEE_ID PRIMARY KEY (employee_id),
  CONSTRAINT username_UNIQUE UNIQUE  (username))
;


-- -----------------------------------------------------
-- Table payment
-- -----------------------------------------------------
CREATE TABLE payment (
  payment_id NUMBER(10),
  employee_id NUMBER(10) CONSTRAINT NN_PAYMENT_EMPLOYEE_ID NOT NULL,
  bill_id NUMBER(10) CONSTRAINT NN_PAYMENT_BILL_ID NOT NULL,
  customer_id NUMBER(10) CONSTRAINT NN_PAYMENT_CUSTOMER_ID NOT NULL,
  payment_date TIMESTAMP CONSTRAINT NN_PAYMENT_PAYMENT_DATE NOT NULL,
  payment_method VARCHAR2(100) CONSTRAINT NN_PAYMENT_PAYMENT_METHOD NOT NULL,
  card_no NUMBER(10) NULL,
  CONSTRAINT PK_PAYMENT_PAYMENT_ID PRIMARY KEY (payment_id),
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
  service_id NUMBER(10),
  room_no NUMBER(10) CONSTRAINT NN_SERVICE_ROOM_NO NOT NULL,
  service_type VARCHAR2(45) CONSTRAINT NN_SERVICE_SERVICE_TYPE NOT NULL,
  service_date TIMESTAMP CONSTRAINT NN_SERVICE_SERVICE_DATE NOT NULL,
  total NUMBER(10) CONSTRAINT NN_SERVICE_TOTAL NOT NULL,
  CONSTRAINT PK_SERVICE_SERVICE_ID PRIMARY KEY (service_id),
  CONSTRAINT fk_service_room1
    FOREIGN KEY (room_no)
    REFERENCES room (room_no)
   )
;


-- -----------------------------------------------------
-- Table bill_detail
-- -----------------------------------------------------
CREATE TABLE bill_detail (
  bill_detail_id NUMBER(10),
  payment_id NUMBER(10) CONSTRAINT NN_BILL_DETAIL_PAYMENT_ID NOT NULL,
  service_id CONSTRAINT NN_BILL_DETAIL_SERVICE_ID NUMBER(10) NOT NULL,
  CONSTRAINT PK_BILL_DETAIL_BILL_DETAIL_ID PRIMARY KEY (bill_detail_id),
  CONSTRAINT fk_bill_detail_payment1
    FOREIGN KEY (payment_id)
    REFERENCES payment (payment_id)
   ,
  CONSTRAINT fk_bill_detail_service1
    FOREIGN KEY (service_id)
    REFERENCES service (service_id)
   )
;