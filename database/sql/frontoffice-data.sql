connect adminfrontoffice/admin@frontoffice

drop user KW008;                                
drop user RM007;                                
drop user AD006;                                
drop user AD005;                                
drop user AD004;                                
drop user AC003;                                
drop user AC002;                                
drop user AC001;
drop sequence sqLogEmployee;
drop table logEmployee;

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
insert into room (type_id, status) values (5, 0);
insert into room (type_id, status) values (6, 1);

insert into room (type_id, status) values (1, 1);
insert into room (type_id, status) values (2, 1);
insert into room (type_id, status) values (3, 1);
insert into room (type_id, status) values (4, 1);
insert into room (type_id, status) values (5, 1);
insert into room (type_id, status) values (6, 0);

insert into room (type_id, status) values (1, 1);
insert into room (type_id, status) values (2, 1);
insert into room (type_id, status) values (3, 1);
insert into room (type_id, status) values (4, 1);
insert into room (type_id, status) values (5, 1);
insert into room (type_id, status) values (6, 1);

insert into room (type_id, status) values (1, 1);
insert into room (type_id, status) values (2, 1);
insert into room (type_id, status) values (3, 1);
insert into room (type_id, status) values (4, 1);
insert into room (type_id, status) values (5, 1);
insert into room (type_id, status) values (6, 1);

insert into room (type_id, status) values (1, 1);
insert into room (type_id, status) values (2, 1);
insert into room (type_id, status) values (3, 1);
insert into room (type_id, status) values (4, 1);
insert into room (type_id, status) values (5, 1);
insert into room (type_id, status) values (6, 1);

insert into room (type_id, status) values (1, 1);
insert into room (type_id, status) values (2, 1);
insert into room (type_id, status) values (3, 1);
insert into room (type_id, status) values (4, 1);
insert into room (type_id, status) values (5, 1);
insert into room (type_id, status) values (6, 1);

insert into room (type_id, status) values (1, 1);
insert into room (type_id, status) values (2, 1);
insert into room (type_id, status) values (3, 1);
insert into room (type_id, status) values (4, 1);
insert into room (type_id, status) values (5, 1);
insert into room (type_id, status) values (6, 1);

------------------------------------------------------------------------------------------------
create or replace trigger tInsCustomer
before insert
on customer
for each row
declare
	last_id number(5);
	new_id varchar2(5);
begin
	select max(substr(customer_id,3,3)) into last_id from customer;
	if last_id is null then
		new_id := 'CU001';
	else
		new_id := 'CU' || lpad(to_number(last_id) + 1, 3, '0');
	end if;
	:new.customer_id := new_id;
end;
/
show err;
drop trigger tInsCustomer;

insert into customer (customer_id,first_name, last_name, address, phone) values ('2171112612889001','Aarron', 'Anderson', '07 Maple Wood Parkway', '1-(609)466-5410');
insert into customer (customer_id,first_name, last_name, address, phone) values ('2171111612889001','Angela', 'Andrews', '40 Magdeline Hill', '1-(915)960-2125');
insert into customer (customer_id,first_name, last_name, address, phone) values ('2171212961189001','Albert', 'Bailey', '50 Dorton Parkway', '1-(240)490-3825');
insert into customer (customer_id,first_name, last_name, address, phone) values ('2171112612889002','Ann', 'Baker','4453 Starling Point', '1-(801)235-9148');
insert into customer (customer_id,first_name, last_name, address, phone) values ('2170101012889001','Annie', 'Banks', '577 Talmadge Junction', '1-(352)347-5840');

---------------------------------------------------------------------------------------------------
create sequence sqLogEmployee minvalue 1 start with 1 increment by 1;

create table logEmployee(
	logNo number constraint pk_logEmployee primary key,
	employee_id varchar2(5),
	status varchar2(1)
);

create or replace trigger tInsEmployee
before insert
on employee
for each row
declare
	last_id number(5);
	new_id varchar2(5);
	new_username varchar2(5);
begin
	select max(substr(employee_id,3,3)) into last_id from employee;
	if last_id is null then
		new_id := 'EM001';
		new_username := substr(:new.first_name,1,1)||substr(:new.last_name,1,1) || '001';
		:new.password := substr(:new.role,1,2) || new_id;
	else
		new_id := 'EM' || lpad(to_number(last_id) + 1, 3, '0');
		new_username := substr(:new.first_name,1,1)||substr(:new.last_name,1,1) || lpad(to_number(last_id) + 1, 3, '0');
		:new.password := substr(:new.role,1,2) || new_id;
	end if;
	:new.employee_id := new_id;
	:new.username := new_username;
	insert into logEmployee values (sqLogEmployee.nextval, :new.employee_id, 'F');
end;
/
show err;

create or replace procedure createUser
is
	username varchar2(20);
	password varchar2(20);
	role varchar2(20);
begin
	for i in (select * from logEmployee where status = 'F')
	loop
		select username into username from employee where employee_id = i.employee_id;
		select password into password from employee where employee_id = i.employee_id;
		select role into role from employee where employee_id = i.employee_id;
		EXECUTE IMMEDIATE 'CREATE USER ' || username || ' IDENTIFIED BY ' || password;
		if role = 'ADMIN' then
			EXECUTE IMMEDIATE 'GRANT CONNECT,ADMIN TO ' || username;
		else
			EXECUTE IMMEDIATE 'GRANT CONNECT,KASIR TO ' || username;
		end if;
		update logEmployee set status = 'T' where logNo = i.logNo;
		COMMIT;
	end loop;
end;
/
show err;

insert into employee (first_name, last_name, role, database, status) values ('Andrea', 'Carter',  'ADMIN', 'FRONTOFFICE', 1);
insert into employee (first_name, last_name, role, database, status) values ('Alan', 'Castillo', 'KASIR', 'FRONTOFFICE', 1);
insert into employee (first_name, last_name, role, database, status) values ('Ashley', 'Collins', 'ADMIN', 'RESTAURANT', 1);
insert into employee (first_name, last_name, role, database, status) values ('Ann', 'Daniels', 'KASIR', 'RESTAURANT', 1);
insert into employee (first_name, last_name, role, database, status) values ('Aaron', 'Davis', 'ADMIN', 'TRAVELAGENT', 1);
insert into employee (first_name, last_name, role, database, status) values ('Amy', 'Danny', 'KASIR', 'TRAVELAGENT', 1);
insert into employee (first_name, last_name, role, database, status) values ('Ruby', 'Martin', 'ADMIN', 'LAUNDRY', 1);
insert into employee (first_name, last_name, role, database, status) values ('Kathleen', 'Watson', 'KASIR', 'LAUNDRY', 1);

execute createUser;

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

insert into bill (employee_id, customer_id, total) values ('EM001', '2171112612889001', 1050000);
insert into bill (employee_id, customer_id, total) values ('EM002', '2171111612889001', 600000);
insert into bill (employee_id, customer_id, total) values ('EM002', '2171212961189001', 800000);
insert into bill (employee_id, customer_id, total) values ('EM005', '2171112612889002', 250000);
insert into bill (employee_id, customer_id, total) values ('EM003', '2170101012889001', 1550000);

----------------------------------------------------------------------------------------------------
create or replace trigger tInsPayment
before insert
on payment
for each row
declare
	last_id varchar(3);
	new_id varchar2(10);
begin
	select max(substr(payment_id, 8, 3)) into last_id from payment where substr(payment_id, 1,7) = 'P' || to_char(sysdate, 'ddmmyy') ;
	if last_id is null then
		new_id := 'P' || to_char(sysdate, 'ddmmyy') || '001';
	else
		new_id := 'P' || to_char(sysdate, 'ddmmyy') || lpad(to_number(last_id) + 1, 3, 0);
	end if;
	:new.payment_id := new_id;
end;
/
show err;

insert into payment (bill_id, payment_date, payment_method) values ('2012180001', to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'), 'cash');
insert into payment (bill_id, payment_date, payment_method) values ('2012180001', to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'), 'cash');
insert into payment (bill_id, payment_date, payment_method, card_no) values ('2012180002', to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'), 'debit', '1522348576912548');
insert into payment (bill_id, payment_date, payment_method, card_no) values ('2012180002', to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'), 'debit', '1522348576912548');
insert into payment (bill_id, payment_date, payment_method, card_no) values ('2012180003', to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'), 'credit', '6020122251477112');
insert into payment (bill_id, payment_date, payment_method, card_no) values ('2012180003', to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'), 'credit', '6020122251477112');
insert into payment (bill_id, payment_date, payment_method) values ('2012180004', to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'), 'cash');
insert into payment (bill_id, payment_date, payment_method, card_no) values ('2012180005', to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'), 'debit', '5124879936521445');
insert into payment (bill_id, payment_date, payment_method, card_no) values ('2012180005', to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'), 'debit', '5124879936521445');
insert into payment (bill_id, payment_date, payment_method, card_no) values ('2012180005', to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'), 'debit', '5124879936521445');

----------------------------------------------------------------------------------------------------
create or replace trigger tInsService
before insert
on service
for each row
declare
	last_id varchar(3);
	new_id varchar2(10);
begin
	select max(substr(service_id, 8, 3)) into last_id from service where substr(service_id, 1,7) = 'S' || to_char(sysdate, 'ddmmyy') ;
	if last_id is null then
		new_id := 'S' || to_char(sysdate, 'ddmmyy') || '001';
	else
		new_id := 'S' || to_char(sysdate, 'ddmmyy') || lpad(to_number(last_id) + 1, 3, 0);
	end if;
	:new.service_id := new_id;
end;
/
show err;

insert into service (room_no, service_type, service_date, total) values (605, 'front office', to_date('12-12-2018', 'dd-mm-yyyy'), 800000);
insert into service (room_no, service_type, service_date, total) values (101, 'front office', to_date('12-12-2018', 'dd-mm-yyyy'), 250000);
insert into service (room_no, service_type, service_date, total) values (103, 'front office', to_date('12-12-2018', 'dd-mm-yyyy'), 250000);
insert into service (room_no, service_type, service_date, total) values (203, 'front office', to_date('12-12-2018', 'dd-mm-yyyy'), 350000);
insert into service (room_no, service_type, service_date, total) values (201, 'front office', to_date('12-12-2018', 'dd-mm-yyyy'), 350000);
insert into service (room_no, service_type, service_date, total) values (304, 'front office', to_date('1212-2018', 'dd-mm-yyyy'), 450000);
insert into service (room_no, service_type, service_date, total) values (102, 'front office', to_date('12-12-2018', 'dd-mm-yyyy'), 250000);
insert into service (room_no, service_type, service_date, total) values (504, 'front office', to_date('12-12-2018', 'dd-mm-yyyy'), 650000);
insert into service (room_no, service_type, service_date, total) values (401, 'front office', to_date('12-12-2018', 'dd-mm-yyyy'), 550000);
insert into service (room_no, service_type, service_date, total) values (204, 'front office', to_date('12-12-2018', 'dd-mm-yyyy'), 350000);

----------------------------------------------------------------------------------------------------
create or replace trigger tInsBillDetail
before insert
on bill_detail
for each row
declare
	last_id varchar(3);
	new_id varchar2(10);
begin
	select max(substr(bill_detail_id, 8, 3)) into last_id from bill_detail where substr(bill_detail_id, 1,7) = 'B' || to_char(sysdate, 'ddmmyy') ;
	if last_id is null then
		new_id := 'B' || to_char(sysdate, 'ddmmyy') || '001';
	else
		new_id := 'B' || to_char(sysdate, 'ddmmyy') || lpad(to_number(last_id) + 1, 3, 0);
	end if;
	:new.bill_detail_id := new_id;
end;
/
show err;

insert into bill_detail (payment_id, service_id) values ('P201218001', 'S201218001');
insert into bill_detail (payment_id, service_id) values ('P201218002', 'S201218002');
insert into bill_detail (payment_id, service_id) values ('P201218003', 'S201218003');
insert into bill_detail (payment_id, service_id) values ('P201218004', 'S201218004');
insert into bill_detail (payment_id, service_id) values ('P201218005', 'S201218005');
insert into bill_detail (payment_id, service_id) values ('P201218006', 'S201218006');
insert into bill_detail (payment_id, service_id) values ('P201218007', 'S201218007');
insert into bill_detail (payment_id, service_id) values ('P201218008', 'S201218008');
insert into bill_detail (payment_id, service_id) values ('P201218009', 'S201218009');
insert into bill_detail (payment_id, service_id) values ('P201218010', 'S201218010');

commit;