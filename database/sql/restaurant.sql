connect system/123@restaurant

drop user adminrestaurant cascade;

create user adminrestaurant identified by admin;
grant connect, UNLIMITED TABLESPACE, resource to adminrestaurant;
grant create public database link to adminrestaurant;
connect adminrestaurant/admin@restaurant

create public database link keFrontOffice
connect to adminfrontoffice identified by admin
using 'FrontOffice';

-- -----------------------------------------------------
-- Table menu
-- -----------------------------------------------------
CREATE TABLE menu (
  menu_id NUMBER(10) CONSTRAINT PK_MENU_ID PRIMARY KEY,
  menu_name VARCHAR2(100) CONSTRAINT NN_MENU_NAME NOT NULL,
  menu_type VARCHAR2(100) CONSTRAINT NN_MENU_MENU_TYPE NOT NULL,
  price NUMBER(10) CONSTRAINT NN_MENU_PRICE NOT NULL
  )
;


-- -----------------------------------------------------
-- Table menu_bill
-- -----------------------------------------------------
CREATE TABLE menu_bill (
  menu_bill_id VARCHAR2(5) CONSTRAINT PK_MENU_BILL_ID PRIMARY KEY,
  employee_id NUMBER(10) CONSTRAINT NN_MENU_BILL_EMPLOYEE_ID NOT NULL,
  room_no NUMBER(10) CONSTRAINT NN_MENU_BILL_ROOM_NO NOT NULL,
  table_no NUMBER(10) CONSTRAINT NN_MENU_BILL_TABLE_NO NOT NULL,
  total NUMBER(10) CONSTRAINT NN_MENU_BILL_TOTAL NOT NULL,
  bill_date TIMESTAMP CONSTRAINT NN_MENU_BILL_BILL_DATE NOT NULL
)
;


-- -----------------------------------------------------
-- Table menu_bill_detail
-- -----------------------------------------------------
CREATE TABLE menu_bill_detail (
  menu_bill_detail_id VARCHAR2(5) CONSTRAINT PK_MENU_BILL_DETAIL_ID PRIMARY KEY,
  menu_bill_id VARCHAR2(10) CONSTRAINT NN_MENU_BILL_DETAIL_1 NOT NULL,
  menu_id NUMBER(10) CONSTRAINT NN_MENU_BILL_DETAIL_2 NOT NULL,
  CONSTRAINT fk_menu_bill_detail_menu_bill1
    FOREIGN KEY (menu_bill_id)
    REFERENCES menu_bill (menu_bill_id)
   ,
  CONSTRAINT fk_menu_bill_detail_menu1
    FOREIGN KEY (menu_id)
    REFERENCES menu (menu_id)
   )
;
