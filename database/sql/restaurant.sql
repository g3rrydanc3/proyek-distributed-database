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
-- Table menu
-- -----------------------------------------------------
CREATE TABLE menu (
  id NUMBER(10) NOT NULL,
  name VARCHAR2(100) NOT NULL,
  menu_type VARCHAR2(100) NOT NULL,
  price NUMBER(10) NOT NULL,
  PRIMARY KEY (id))
;


-- -----------------------------------------------------
-- Table menu_bill
-- -----------------------------------------------------
CREATE TABLE menu_bill (
  id NUMBER(10) NOT NULL,
  room_no NUMBER(10) NOT NULL,
  table_no NUMBER(10) NOT NULL,
  capacity VARCHAR2(45) NOT NULL,
  total VARCHAR2(45) NOT NULL,
  bill_date TIMESTAMP NOT NULL,
  employee_id NUMBER(10) NOT NULL,
  PRIMARY KEY (id)
  CREATE INDEX fk_menu_bill_employee_idx ON menu_bill (employee_id ASC),
  CONSTRAINT fk_menu_bill_employee
    FOREIGN KEY (employee_id)
    REFERENCES employee (employee_id)
   )
;


-- -----------------------------------------------------
-- Table menu_bill_detail
-- -----------------------------------------------------
CREATE TABLE menu_bill_detail (
  id NUMBER(10) NOT NULL,
  menu_bill_id NUMBER(10) NOT NULL,
  menu_id NUMBER(10) NOT NULL,
  PRIMARY KEY (id)
  CREATE INDEX fk_menu_bill_detail_menu_bill1_idx ON menu_bill_detail (menu_bill_id ASC)
  CREATE INDEX fk_menu_bill_detail_menu1_idx ON menu_bill_detail (menu_id ASC),
  CONSTRAINT fk_menu_bill_detail_menu_bill1
    FOREIGN KEY (menu_bill_id)
    REFERENCES menu_bill (id)
   ,
  CONSTRAINT fk_menu_bill_detail_menu1
    FOREIGN KEY (menu_id)
    REFERENCES menu (id)
   )
;
