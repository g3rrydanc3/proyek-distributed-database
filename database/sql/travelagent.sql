connect system/123@frontoffice

drop user adminfrontoffice cascade;
drop user employeefrontoffice cascade;

create user adminfrontoffice identified by admin;
grant connect, UNLIMITED TABLESPACE, resource to adminfrontoffice;

create user employeefrontoffice identified by employee;
grant connect to employeefrontoffice;

-- -----------------------------------------------------
-- Table customer
-- -----------------------------------------------------
CREATE TABLE customer (
  customer_id NUMBER(10),
  first_name VARCHAR2(100) CONSTRAINT NN_CUSTOMER_FIRST_NAME NOT NULL,
  last_name VARCHAR2(100) CONSTRAINT NN_CUSTOMER_LAST_NAME NOT NULL,
  address VARCHAR2(100) CONSTRAINT NN_CUSTOMER_ADDRESS NOT NULL,
  phone VARCHAR2(20) CONSTRAINT NN_CUSTOMER_PHONE NOT NULL,
  CONSTRAINT PRIMARY KEY (customer_id))
;


-- -----------------------------------------------------
-- Table agent
-- -----------------------------------------------------
CREATE TABLE agent (
  agent_id NUMBER(10),
  name VARCHAR2(100) CONSTRAINT NN_AGENT_NAME NOT NULL,
  username VARCHAR2(100) CONSTRAINT NN_AGENT_USERNAME NOT NULL,
  password VARCHAR2(100) CONSTRAINT NN_AGENT_PASSWORD NOT NULL,
  CONSTRAINT PRIMARY KEY (agent_id))
;


-- -----------------------------------------------------
-- Table reservation
-- -----------------------------------------------------
CREATE TABLE reservation (
  reservation_id NUMBER(10),
  customer_id NUMBER(10) CONSTRAINT NN_AGENT_CUSTOMER_ID NOT NULL,
  agent_id NUMBER(10) CONSTRAINT NN_AGENT_AGENT_ID NOT NULL,
  check_in DATE CONSTRAINT NN_AGENT_CHECK_IN NOT NULL,
  check_out DATE CONSTRAINT NN_AGENT_CHECK_OUT NOT NULL,
  CONSTRAINT PRIMARY KEY (reservation_id)
  CONSTRAINT fk_reservation_customer1
    FOREIGN KEY (customer_id)
    REFERENCES customer (customer_id)
   ,
  CONSTRAINT fk_reservation_agent1
    FOREIGN KEY (agent_id)
    REFERENCES agent (agent_id)
   )
;


-- -----------------------------------------------------
-- Table reservation_detail
-- -----------------------------------------------------
CREATE TABLE reservation_detail (
  reservation_detail_id NUMBER(10),
  reservation_id NUMBER(10) CONSTRAINT NN_AGENT_RESERVATION_ID NOT NULL,
  room_type VARCHAR2(45) CONSTRAINT NN_AGENT_ROOM_TYPE NOT NULL,
  qty NUMBER(3) CHECK (qty > 0) CONSTRAINT NN_AGENT_QTY NOT NULL,
  price NUMBER(10) CHECK (price > 0) CONSTRAINT NN_AGENT_PRICE NOT NULL,
  CONSTRAINT PRIMARY KEY (reservation_detail_id)
  CONSTRAINT fk_reservation_detail_reservation
    FOREIGN KEY (reservation_id)
    REFERENCES reservation (reservation_id)
   )
;
