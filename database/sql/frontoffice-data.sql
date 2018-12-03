connect adminfrontoffice/admin@frontoffice

create or replace trigger tInsRoomType
before insert
on room_type
for each row
declare
	last_id number(5);
	new_id number(5);
begin
	select max(room_type_id) into last_id from room_type;
	if last_id is null then
		new_id := 1;
	else
		new_id := last_id + 1;
	end if;
	:new.room_type_id := new_id;
end;
/
show err;

insert into room_type (room_type, description, capacity, price) VALUES ('Superior Single', 'A room assigned to one person. May have one or more beds.', 1, 250000);
insert into room_type (room_type, description, capacity, price) VALUES ('Superior Double', 'A room assigned to two people. May have one or more beds.', 2, 350000);
insert into room_type (room_type, description, capacity, price) VALUES ('Deluxe Single', 'A room assigned to one person or more people.', 3, 450000);
insert into room_type (room_type, description, capacity, price) VALUES ('Deluxe Double', 'A room assigned to two person or more people.', 4, 550000);
insert into room_type (room_type, description, capacity, price) VALUES ('King Single', 'A room with a king-sized bed. May be occupied by one or more people.', 1, 650000);
insert into room_type (room_type, description, capacity, price) VALUES ('King Double', 'A room with a king-sized bed. May be occupied by one or more people.', 1, 800000);

------------------------------------------------------------------------------------------
create or replace trigger tInsRoom
before insert
on room
for each row
declare
	last_room_no varchar(2);
	new_room_no varchar(3);
	temp number(3);
begin
	select max(substr(room_no,2,2)) into last_room_no from room where type_id = :new.type_id;
	if last_room_no is null then
		new_room_no := :new.type_id || '01';
	else
		temp := to_number(last_room_no)+1;
		new_room_no := :new.type_id || lpad(temp, 2, '0');
	end if;
	:new.room_no := new_room_no;
end;
/
show err;

select max(substr(room_no,1,2)) from room where type_id = 1;

insert into room (type_id, status) values (1, 0);
insert into room (type_id, status) values (2, 1);
insert into room (type_id, status) values (3, 1);
insert into room (type_id, status) values (4, 0);
insert into room (type_id, status) values (5, 1);
insert into room (type_id, status) values (6, 1);

insert into room (type_id, status) values (1, 0);
insert into room (type_id, status) values (2, 1);
insert into room (type_id, status) values (3, 1);
insert into room (type_id, status) values (4, 0);
insert into room (type_id, status) values (5, 1);
insert into room (type_id, status) values (6, 1);

insert into room (type_id, status) values (1, 0);
insert into room (type_id, status) values (2, 0);
insert into room (type_id, status) values (3, 1);
insert into room (type_id, status) values (4, 1);
insert into room (type_id, status) values (5, 1);
insert into room (type_id, status) values (6, 1);

insert into room (type_id, status) values (1, 1);
insert into room (type_id, status) values (2, 0);
insert into room (type_id, status) values (3, 0);
insert into room (type_id, status) values (4, 1);
insert into room (type_id, status) values (5, 1);
insert into room (type_id, status) values (6, 1);

insert into room (type_id, status) values (1, 1);
insert into room (type_id, status) values (2, 1);
insert into room (type_id, status) values (3, 1);
insert into room (type_id, status) values (4, 1);
insert into room (type_id, status) values (5, 1);
insert into room (type_id, status) values (6, 1);

insert into room (type_id, status) values (1, 0);
insert into room (type_id, status) values (2, 0);
insert into room (type_id, status) values (3, 0);
insert into room (type_id, status) values (4, 0);
insert into room (type_id, status) values (5, 0);
insert into room (type_id, status) values (6, 0);

insert into room (type_id, status) values (1, 0);
insert into room (type_id, status) values (2, 1);
insert into room (type_id, status) values (3, 0);
insert into room (type_id, status) values (4, 1);
insert into room (type_id, status) values (5, 0);
insert into room (type_id, status) values (6, 1);

insert into room (type_id, status) values (1, 1);
insert into room (type_id, status) values (2, 1);
insert into room (type_id, status) values (3, 1);
insert into room (type_id, status) values (4, 1);
insert into room (type_id, status) values (5, 1);
insert into room (type_id, status) values (6, 1);

insert into room (type_id, status) values (1, 0);
insert into room (type_id, status) values (2, 0);
insert into room (type_id, status) values (3, 0);
insert into room (type_id, status) values (4, 0);
insert into room (type_id, status) values (5, 0);
insert into room (type_id, status) values (6, 0);

insert into room (type_id, status) values (1, 1);
insert into room (type_id, status) values (2, 1);
insert into room (type_id, status) values (3, 0);
insert into room (type_id, status) values (4, 1);
insert into room (type_id, status) values (5, 0);
insert into room (type_id, status) values (6, 1);

------------------------------------------------------------------------------------------------
create or replace trigger tInsCustomer
before insert
on customer
for each row
declare
	last_id number(5);
	new_id number(5);
begin
	select max(customer_id) into last_id from customer;
	if last_id is null then
		new_id := 1;
	else
		new_id := last_id + 1;
	end if;
	:new.customer_id := new_id;
end;
/
show err;

insert into customer (first_name, last_name, address, phone) values ('Aaron', 'Anderson', '07 Maple Wood Parkway', '1-(609)466-5410');
insert into customer (first_name, last_name, address, phone) values ('Angela', 'Andrews', '40 Magdeline Hill', '1-(915)960-2125');
insert into customer (first_name, last_name, address, phone) values ('Albert', 'Bailey', '50 Dorton Parkway', '1-(240)490-3825');
insert into customer (first_name, last_name, address, phone) values ('Ann', 'Baker','4453 Starling Point', '1-(801)235-9148');
insert into customer (first_name, last_name, address, phone) values ('Annie', 'Banks', '577 Talmadge Junction', '1-(352)347-5840');

----------------------------------------------------------------------------------------------------
--kode : 2digit tanggal, 2digit bulan, 2 digit taun, 4 digit urutan
create or replace trigger tInsBill
before insert
on bill
for each row
declare
	last_id varchar(4);
	new_id number(10);
begin
	select max(substr(bill_id, 7, 4)) into last_id from bill where substr(bill_id, 1,6) = to_char(sysdate, 'ddmmyy') ;
	if last_id is null then
		new_id := to_char(sysdate, 'ddmmyy') || '0001';
	else
		new_id := to_char(sysdate, 'ddmmyy') || lpad(to_number(last_id) + 1, 4, 0);
	end if;
	:new.bill_id := new_id;
end;
/
show err;

insert into bill (customer_id, room_no, total) values (1, );

CREATE TABLE bill (
  bill_id NUMBER(10) CONSTRAINT pk_bill_id PRIMARY KEY,
  customer_id NUMBER(10) CONSTRAINT nn_bill_customer_id NOT NULL,
  room_no NUMBER(10) CONSTRAINT nn_bill_room_no NOT NULL,
  total NUMBER(10) CONSTRAINT nn_bill_total NOT NULL,
  CONSTRAINT fk_bill_customer1
    FOREIGN KEY (customer_id)
    REFERENCES customer (customer_id)
   ,
  CONSTRAINT fk_bill_room1
    FOREIGN KEY (room_no)
    REFERENCES room (room_no)
   )
;

---------------------------------------------------------------------------------------------------
create or replace trigger tInsEmployee
before insert
on employee
for each row
declare
	last_id number(5);
	new_id number(5);
begin
	select max(employee_id) into last_id from employee;
	if last_id is null then
		new_id := 1;
	else
		new_id := last_id + 1;
	end if;
	:new.employee_id := new_id;
end;
/
show err;

insert into employee (first_name, last_name, username, password) values ('Andrea', 'Carter', 'acarter', 'PAeJazz');
insert into employee (first_name, last_name, username, password) values ('Alan', 'Castillo', 'acastillo', '0Vb4L8a');
insert into employee (first_name, last_name, username, password) values ('Ashley', 'Collins', 'acollins', 'BI2PYBV3GVv');
insert into employee (first_name, last_name, username, password) values ('Ann', 'Daniels', 'adaniels', '5scakY');
insert into employee (first_name, last_name, username, password) values ('Aaron', 'Davis', 'adavis', 'IPYdVdmC1G');

----------------------------------------------------------------------------------------------------


-- -----------------------------------------------------
-- Table payment
-- -----------------------------------------------------
CREATE TABLE payment (
  payment_id NUMBER(10) CONSTRAINT pk_payment_id PRIMARY KEY,
  employee_id NUMBER(10) CONSTRAINT nn_payment_employee_id NOT NULL,
  bill_id NUMBER(10) CONSTRAINT nn_payment_bill_id NOT NULL,
  customer_id NUMBER(10) CONSTRAINT nn_payment_customer_id NOT NULL,
  payment_date TIMESTAMP CONSTRAINT nn_payment_date NOT NULL,
  payment_method VARCHAR2(100) CONSTRAINT nn_payment_method NOT NULL,
  card_no NUMBER(10) NULL,
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
  service_id NUMBER(10) CONSTRAINT pk_service_id PRIMARY KEY,
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
  bill_detail_id NUMBER(10) CONSTRAINT pk_bill_detail_id PRIMARY KEY,
  payment_id NUMBER(10) CONSTRAINT nn_service_id NOT NULL,
  service_id NUMBER(10) CONSTRAINT nn_ NOT NULL,
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
