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
-- Table agent
-- -----------------------------------------------------
CREATE TABLE agent (
  agent_id NUMBER(10) NOT NULL,
  name VARCHAR2(100) NOT NULL,
  username VARCHAR2(100) NOT NULL,
  password VARCHAR2(100) NOT NULL,
  PRIMARY KEY (agent_id))
;


-- -----------------------------------------------------
-- Table reservation
-- -----------------------------------------------------
CREATE TABLE reservation (
  reservation_id NUMBER(10) NOT NULL,
  customer_id NUMBER(10) NOT NULL,
  agent_id NUMBER(10) NOT NULL,
  check_in DATE NOT NULL,
  check_out DATE NOT NULL,
  PRIMARY KEY (reservation_id)
  CREATE INDEX fk_reservation_customer1_idx ON reservation (customer_id ASC)
  CREATE INDEX fk_reservation_agent1_idx ON reservation (agent_id ASC),
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
  reservation_detail_id NUMBER(10) NOT NULL,
  reservation_id NUMBER(10) NOT NULL,
  room_type VARCHAR2(45) NOT NULL,
  qty NUMBER(3) CHECK (qty > 0) NOT NULL,
  price NUMBER(10) CHECK (price > 0) NOT NULL,
  PRIMARY KEY (reservation_detail_id)
  CREATE INDEX fk_reservation_detail_reservation_idx ON reservation_detail (reservation_id ASC),
  CONSTRAINT fk_reservation_detail_reservation
    FOREIGN KEY (reservation_id)
    REFERENCES reservation (reservation_id)
   )
;
