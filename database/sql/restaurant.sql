connect system/123@restaurant

drop user adminrestaurant cascade;
drop user employeerestaurant cascade;

create user adminrestaurant identified by admin;
grant connect, UNLIMITED TABLESPACE, resource to adminrestaurant;

create user employeerestaurant identified by employee;
grant connect to employeerestaurant;

connect adminrestaurant/admin@restaurant

-- -----------------------------------------------------
-- Table employee
-- -----------------------------------------------------
CREATE TABLE employee (
  employee_id NUMBER(10),
  first_name VARCHAR2(100)  CONSTRAINT NN_EMPLOYEE_FIRST_NAME NOT NULL,
  last_name VARCHAR2(100) CONSTRAINT NN_EMPLOYEE_LAST_NAME NOT NULL,
  username VARCHAR2(100) CONSTRAINT NN_EMPLOYEE_USERNAME NOT NULL,
  password VARCHAR2(100) CONSTRAINT NN_EMPLOYEE_PASSWORD NOT NULL,
  CONSTRAINT PK_EMPLOYEE_EMPLOYEE_ID PRIMARY KEY (employee_id),
  CONSTRAINT username_UNIQUE UNIQUE  (username))
;


-- -----------------------------------------------------
-- Table menu
-- -----------------------------------------------------
CREATE TABLE menu (
  id NUMBER(10),
  name VARCHAR2(100) CONSTRAINT NN_MENU_NAME NOT NULL,
  menu_type VARCHAR2(100) CONSTRAINT NN_MENU_MENU_TYPE NOT NULL,
  price NUMBER(10) CONSTRAINT NN_MENU_PRICE NOT NULL,
  CONSTRAINT PK_MENU_ID PRIMARY KEY (id))
;


-- -----------------------------------------------------
-- Table menu_bill
-- -----------------------------------------------------
CREATE TABLE menu_bill (
  id NUMBER(10),
  room_no NUMBER(10) CONSTRAINT NN_MENU_BILL_ROOM_NO NOT NULL,
  table_no NUMBER(10) CONSTRAINT NN_MENU_BILL_TABLE_NO NOT NULL,
  capacity NUMBER(10) CONSTRAINT NN_MENU_BILL_CAPACITY NOT NULL,
  total NUMBER(10) CONSTRAINT NN_MENU_BILL_TOTAL NOT NULL,
  bill_date TIMESTAMP CONSTRAINT NN_MENU_BILL_BILL_DATE NOT NULL,
  employee_id NUMBER(10) CONSTRAINT NN_MENU_BILL_EMPLOYEE_ID NOT NULL,
  CONSTRAINT PK_MENU_BILL_ID PRIMARY KEY (id),
  CONSTRAINT fk_menu_bill_employee
    FOREIGN KEY (employee_id)
    REFERENCES employee (employee_id)
   )
;


-- -----------------------------------------------------
-- Table menu_bill_detail
-- -----------------------------------------------------
CREATE TABLE menu_bill_detail (
  id NUMBER(10) ,
  menu_bill_id NUMBER(10) CONSTRAINT NN_MENU_BILL_DETAIL_1 NOT NULL,
  menu_id NUMBER(10) CONSTRAINT NN_MENU_BILL_DETAIL_2 NOT NULL,
  CONSTRAINT PK_MENU_BILL_DETAIL_ID PRIMARY KEY (id),
  CONSTRAINT fk_menu_bill_detail_menu_bill1
    FOREIGN KEY (menu_bill_id)
    REFERENCES menu_bill (id)
   ,
  CONSTRAINT fk_menu_bill_detail_menu1
    FOREIGN KEY (menu_id)
    REFERENCES menu (id)
   )
;
