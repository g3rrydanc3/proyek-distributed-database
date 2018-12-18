connect system/123@travelagent

drop user admintravelagent cascade;

create user admintravelagent identified by admin;
grant connect, UNLIMITED TABLESPACE, resource, create user to admintravelagent WITH ADMIN OPTION;
grant dba to admintravelagent;
grant create public database link to admintravelagent;
connect admintravelagent/admin@travelagent

create public database link keFrontOffice
connect to adminfrontoffice identified by admin
using 'FrontOffice';
-- -----------------------------------------------------
-- Table agent
-- -----------------------------------------------------
CREATE TABLE agent (
  agent_id NUMBER(10),
  name VARCHAR2(100)  CONSTRAINT NN_EMPLOYEE_FIRST_NAME NOT NULL,
  username VARCHAR2(100) CONSTRAINT NN_AGENT_USERNAME NOT NULL,
  password VARCHAR2(100) CONSTRAINT NN_AGENT_PASSWORD NOT NULL,
  CONSTRAINT PK_AGENT_AGENT_ID PRIMARY KEY (agent_id))
;


-- -----------------------------------------------------
-- Table reservation
-- -----------------------------------------------------
CREATE TABLE reservation (
  reservation_id VARCHAR2(5) CONSTRAINT PK_RESERVATION_RESERVATION_ID PRIMARY KEY,
  customer_id NUMBER(10) CONSTRAINT NN_AGENT_CUSTOMER_ID NOT NULL,
  agent_id NUMBER(10) CONSTRAINT NN_AGENT_AGENT_ID NOT NULL,
  check_in DATE CONSTRAINT NN_AGENT_CHECK_IN NOT NULL,
  check_out DATE CONSTRAINT NN_AGENT_CHECK_OUT NOT NULL,
  CONSTRAINT fk_reservation_agent1
    FOREIGN KEY (agent_id)
    REFERENCES agent (agent_id)
   )
;


-- -----------------------------------------------------
-- Table reservation_detail
-- -----------------------------------------------------
CREATE TABLE reservation_detail (
  reservation_detail_id VARCHAR2(5),
  reservation_id VARCHAR2(5) CONSTRAINT NN_AGENT_RESERVATION_ID NOT NULL,
  room_type NUMBER(10) CONSTRAINT NN_AGENT_ROOM_TYPE NOT NULL,
  qty NUMBER(3) CHECK (qty > 0) CONSTRAINT NN_AGENT_QTY NOT NULL,
  price NUMBER(10) CHECK (price > 0) CONSTRAINT NN_AGENT_PRICE NOT NULL,
  CONSTRAINT PK_RESERVATION_DETAIL_1 PRIMARY KEY (reservation_detail_id),
  CONSTRAINT fk_reservation_detail_1
    FOREIGN KEY (reservation_id)
    REFERENCES reservation (reservation_id)
   )
;
