connect adminlaundry/admin@laundry

create or replace trigger tInsEmployee_id
before insert
on employee_id
for each row
declare
	indeks number(4);
	temp number(3);
begin
	select count(employee_id) into indeks from employee;
	if indeks is null then
		new_employee_id := '0001';
	else
		if to_number(indeks)+1 <9		
			temp := to_number(indeks)+1;
			new_employee_id := lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_employee_id := lpad(temp, 3, '0');
		end if;
	end if;
	:new.employee_id := new_employee_id;
end;
/
show err;

create or replace trigger tInsUsername_Employee
before insert
on employee
for each row
declare
	indeks number(4);
	temp number(3);
begin
	select count(employee_id) into indeks from employee;
	if indeks is null then
		new_username := substr(:old.first_name,0,1)||substr(:old.last_name,0,1) || '001';
	else
		if to_number(indeks)+1 <9		
			temp := to_number(indeks)+1;
			new_username := substr(:old.first_name,0,1)||substr(:old.last_name,0,1) || lpad(temp, 3, '0');
		else
			temp := to_number(indeks)+1;
			new_username := substr(:old.first_name,0,1)||substr(:old.last_name,0,1) || lpad(temp, 2, '0');
		end if;
	end if;
	:new.username := new_username;
end;
/
show err;

insert into employee (first_name, last_name, password) VALUES ('Servantus','First','1111');
insert into employee (first_name, last_name, password) VALUES ('Servantus','Second','1111');insert into employee (first_name, last_name, password) VALUES ('Servantus','Third','1111');insert into employee (first_name, last_name, password) VALUES ('Servantus','Fourth','1111');
insert into employee (first_name, last_name, password) VALUES ('Servantus','Fifth','1111');
------------------------------------------------------------------------------------------
create or replace trigger tInsLaundry_bill
before insert
on laundry_bill
for each row
declare
	indeks number(4);
	temp number(3);
begin
	select count(laundry_bill_id) into indeks from laundry_bill;
	if indeks is null then
		new_laundry_bill_id := to_char(sysdate, 'ddmmyy')||'0001';
	else
		if to_number(indeks)+1 <9		
			temp := to_number(indeks)+1;
			new_laundry_bill_id := to_char(sysdate, 'ddmmyy')||lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_laundry_bill_id := to_char(sysdate, 'ddmmyy')||lpad(temp, 3, '0');
		end if;
	end if;
	:new.laundry_bill_id := new_laundry_bill_id;
	:new.bill_date := to_char(sysdate, 'ddmmyy');
end;
/
show err;

insert into laundry_bill (room_no,employee_id,total,status) VALUES (101,'SF001',2000000,1);
insert into laundry_bill (room_no,employee_id,total,status) VALUES (102,'SF001',2500000,2);
insert into laundry_bill (room_no,employee_id,total,status) VALUES (202,'SF003',2500000,1);
insert into laundry_bill (room_no,employee_id,total,status) VALUES (105,'SF001',1500000,1);
insert into laundry_bill (room_no,employee_id,total,status) VALUES (104,'SF003',3500000,2);
------------------------------------------------------------------------------------------
create or replace trigger tInsLaundry_Service
before insert
on laundry_service
for each row
declare
	indeks number(4);
	temp number(3);
begin
	select count(laundry_service_id) into indeks from laundry_service;
	if indeks is null then
		new_laundry_service_id := '0001';
	else
		if to_number(indeks)+1 <9		
			temp := to_number(indeks)+1;
			new_laundry_service_id := lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_laundry_service_id := lpad(temp, 3, '0');
		end if;
	end if;
	:new.laundry_service_id := new_laundry_service_id;
end;
/
show err;

insert into laundry_service (service_type, price) VALUES ('collecting',50000);
insert into laundry_service (service_type, price) VALUES ('sorting',25000);
insert into laundry_service (service_type, price) VALUES ('washing',90000);
insert into laundry_service (service_type, price) VALUES ('drying',85000);
insert into laundry_service (service_type, price) VALUES ('folding',45000);
------------------------------------------------------------------------------------------------
create or replace trigger tInsLaundry_bill_detail
before insert
on laundry_bill_detail
for each row
declare
	indeks number(4);
	temp number(3);
begin
	select count(id) into indeks from laundry_bill_detail;
	if indeks is null then
		new_laundry_bill_detail_id := :old.laundry_bill_id||'0001';
	else
		if to_number(indeks)+1 <9		
			temp := to_number(indeks)+1;
			new_laundry_bill_detail_id := :old.laundry_bill_id||lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_laundry_bill_detail_id := :old.laundry_bill_id||lpad(temp, 3, '0');
		end if;
	end if;
	:new.laundry_bill_detail_id := new_laundry_bill_detail_id;
end;
/
show err;