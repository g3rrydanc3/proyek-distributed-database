connect system/123@frontoffice

drop user adminfrontoffice cascade;
drop user employeefrontoffice cascade;

create user adminfrontoffice identified by admin;
grant connect, UNLIMITED TABLESPACE, resource to adminfrontoffice;

create user employeefrontoffice identified by employee;
grant connect to employeefrontoffice;



connect adminfrontoffice/admin@frontoffice

--DROP TABLE bill_detail CASCADE CONSTRAINT PURGE;
--DROP TABLE service CASCADE CONSTRAINT PURGE;
--DROP TABLE payment CASCADE CONSTRAINT PURGE;
--DROP TABLE employee CASCADE CONSTRAINT PURGE;
--DROP TABLE bill CASCADE CONSTRAINT PURGE;
--DROP TABLE customer CASCADE CONSTRAINT PURGE;
--DROP TABLE room CASCADE CONSTRAINT PURGE;
--DROP TABLE room_type CASCADE CONSTRAINT PURGE;

-- -----------------------------------------------------
-- Table room_type
-- -----------------------------------------------------
CREATE TABLE room_type (
  room_type_id NUMBER(10) CONSTRAINT pk_room_type_id PRIMARY KEY,
  room_type VARCHAR2(100) CONSTRAINT nn_room_type NOT NULL,
  description VARCHAR2(100) CONSTRAINT nn_room_type_description NOT NULL,
  capacity NUMBER(3) CONSTRAINT nn_room_type_capacity NOT NULL,
  price NUMBER(10) CONSTRAINT nn_room_type_price NOT NULL)
;


-- -----------------------------------------------------
-- Table room
-- -----------------------------------------------------
CREATE TABLE room (
  room_no NUMBER(10) CONSTRAINT pk_room_no PRIMARY KEY,
  type_id NUMBER(10) CONSTRAINT nn_room_room_type_id NOT NULL,
  status NUMBER(3) CONSTRAINT nn_room_status NOT NULL,
  CONSTRAINT fk_room_room_type
    FOREIGN KEY (type_id)
    REFERENCES room_type (room_type_id)
   )
;


-- -----------------------------------------------------
-- Table customer
-- -----------------------------------------------------
CREATE TABLE customer (
  customer_id VARCHAR2(16) CONSTRAINT pk_customer_id PRIMARY KEY,
  first_name VARCHAR2(100) CONSTRAINT nn_customer_first_name NOT NULL,
  last_name VARCHAR2(100) CONSTRAINT nn_customer_last_name NOT NULL,
  address VARCHAR2(100) CONSTRAINT nn_customer_address NOT NULL,
  phone VARCHAR2(20) CONSTRAINT nn_customer_phone NOT NULL
  )
;


-- -----------------------------------------------------
-- Table bill
-- -----------------------------------------------------
CREATE TABLE bill (
  bill_id VARCHAR2(10) CONSTRAINT pk_bill_id PRIMARY KEY,
  employee_id VARCHAR2(5) CONSTRAINT nn_payment_employee_id NOT NULL,
  customer_id VARCHAR2(5) CONSTRAINT nn_bill_customer_id NOT NULL,
  total NUMBER(10) CONSTRAINT nn_bill_total NOT NULL,
  CONSTRAINT fk_bill_customer1
    FOREIGN KEY (customer_id)
    REFERENCES customer (customer_id)),
  CONSTRAINT fk_bill_employee1
    FOREIGN KEY (employee_id)
    REFERENCES employee (employee_id)
  )
;


-- -----------------------------------------------------
-- Table employee
-- -----------------------------------------------------
CREATE TABLE employee (
  employee_id VARCHAR2(5) CONSTRAINT pk_employee_id PRIMARY KEY,
  first_name VARCHAR2(100) CONSTRAINT nn_employee_first_name NOT NULL,
  last_name VARCHAR2(100) CONSTRAINT nn_employee_last_name NOT NULL,
  username VARCHAR2(100) CONSTRAINT nn_employee_username NOT NULL,
  password VARCHAR2(100) CONSTRAINT nn_employee_password NOT NULL,
  role VARCHAR2(10) CONSTRAINT nn_employee_role NOT NULL,
  CONSTRAINT unique_employee_username UNIQUE (username))
;


-- -----------------------------------------------------
-- Table payment
-- -----------------------------------------------------
CREATE TABLE payment (
  payment_id VARCHAR2(10) CONSTRAINT pk_payment_id PRIMARY KEY,
  bill_id VARCHAR2(10) CONSTRAINT nn_payment_bill_id NOT NULL,
  payment_date TIMESTAMP CONSTRAINT nn_payment_date NOT NULL,
  payment_method VARCHAR2(100) CONSTRAINT nn_payment_method NOT NULL,
  card_no VARCHAR(16) NULL,
  CONSTRAINT fk_payment_customer1
    FOREIGN KEY (customer_id)
    REFERENCES customer (customer_id)
   ,
  CONSTRAINT fk_payment_bill1
    FOREIGN KEY (bill_id)
    REFERENCES bill (bill_id)
   )
;


-- -----------------------------------------------------
-- Table service
-- -----------------------------------------------------
CREATE TABLE service (
  service_id VARCHAR2(10) CONSTRAINT pk_service_id PRIMARY KEY,
  room_no NUMBER(10) CONSTRAINT nn_service_room_no NOT NULL,
  service_type VARCHAR2(45) CONSTRAINT nn_service_type NOT NULL,
  service_date TIMESTAMP CONSTRAINT nn_service_date NOT NULL,
  total NUMBER(10) CONSTRAINT nn_service_total1e NOT NULL,
  CONSTRAINT fk_service_room1
    FOREIGN KEY (room_no)
    REFERENCES room (room_no)
   )
;


-- -----------------------------------------------------
-- Table bill_detail
-- -----------------------------------------------------
CREATE TABLE bill_detail (
  bill_detail_id VARCHAR2(10) CONSTRAINT pk_bill_detail_id PRIMARY KEY,
  payment_id VARCHAR2(10) CONSTRAINT nn_service_id NOT NULL,
  service_id VARCHAR2(10) CONSTRAINT nn_ NOT NULL,
  CONSTRAINT fk_bill_detail_payment1
    FOREIGN KEY (payment_id)
    REFERENCES payment (payment_id)
   ,
  CONSTRAINT fk_bill_detail_service1
    FOREIGN KEY (service_id)
    REFERENCES service (service_id)
   )
;

set serveroutput on
BEGIN 
	FOR x IN (SELECT * FROM tab)
	LOOP
		if lower(x.tname) != 'employee' then
			dbms_output.put_line('SELECT, INSERT, UPDATE ' || x.tname);
			EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE ON ' || x.tname || ' TO employeefrontoffice';
		else
			dbms_output.put_line('SELECT ' || x.tname);
			EXECUTE IMMEDIATE 'GRANT SELECT ON ' || x.tname || ' TO employeefrontoffice';
		end if;
	END LOOP;
END; 
/
