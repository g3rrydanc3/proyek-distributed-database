connect adminrestaurant/admin@restaurant

create or replace trigger tInsEmployee
before insert
on employee
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

insert into employee (first_name, last_name, username, password) VALUES ('Ahmad','Albana', 'Abana', '111111');
insert into employee (first_name, last_name, username, password) VALUES ('Bayu','Beni', 'Bani', '222222');
insert into employee (first_name, last_name, username, password) VALUES ('Ciko','Caki', 'Ciki', '333333');
insert into employee (first_name, last_name, username, password) VALUES ('Doni','Donkin', 'Dodo', '444444');
insert into employee (first_name, last_name, username, password) VALUES ('Erik','Eka', 'Rika', '555555');

------------------------------------------------------------------------------------------
create or replace trigger tInsMenu
before insert
on menu
for each row
declare
	indeks number(4);
	temp number(3);
begin
	select count(id ) into indeks from menu;
	if indeks is null then
		new_id := '0001';
	else
		if to_number(indeks)+1 <9		
			temp := to_number(indeks)+1;
			new_id := lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_id := lpad(temp, 3, '0');
		end if;
	end if;
	:new.id := new_id;
end;
/
show err;

insert into menu (name,menu_type,price) VALUES ('Aglio Olio','Food',100000);
insert into menu (name,menu_type,price) VALUES ('Burger Krezz','Food',200000);
insert into menu (name,menu_type,price) VALUES ('Chicken Katsudon','Food',300000);
insert into menu (name,menu_type,price) VALUES ('Donburi Mayo','Food',400000);
insert into menu (name,menu_type,price) VALUES ('Egg Benedict','Food',500000);
insert into menu (name,menu_type,price) VALUES ('Aquase','Beverages',150000);
insert into menu (name,menu_type,price) VALUES ('Beer Splash','Beverages',250000);
insert into menu (name,menu_type,price) VALUES ('Cocktail Soda','Beverages',350000);
insert into menu (name,menu_type,price) VALUES ('Dragon Lemonade','Beverages',450000);
insert into menu (name,menu_type,price) VALUES ('Espresso Torabika','Beverages',550000);

------------------------------------------------------------------------------------------------
create or replace trigger tInsMenu_bill
before insert
on menu_bill
for each row
declare
	indeks number(4);
	temp number(3);
begin
	select count(id) into indeks from menu_bill;
	if indeks is null then
		new_id := to_char(sysdate, 'ddmmyy')||'0001';
	else
		if to_number(indeks)+1 <9		
			temp := to_number(indeks)+1;
			new_id := to_char(sysdate, 'ddmmyy')||lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_id := to_char(sysdate, 'ddmmyy')||lpad(temp, 3, '0');
		end if;
	end if;
	:new.id := new_id;
	:new.bill_date := to_char(sysdate, 'ddmmyy')||to_char(sysdate, 'ddmmyy');
end;
/
show err;

insert into menu_bill (room_no, table_no, capacity, total, employee_id) VALUES (01,1,2,200000,0001);
insert into menu_bill (room_no, table_no, capacity, total, employee_id) VALUES (02,2,1,450000,0001);
insert into menu_bill (room_no, table_no, capacity, total, employee_id) VALUES (03,3,1,100000,0001);
insert into menu_bill (room_no, table_no, capacity, total, employee_id) VALUES (04,5,2,750000,0002);
insert into menu_bill (room_no, table_no, capacity, total, employee_id) VALUES (05,4,2,200000,0001);

----------------------------------------------------------------------------------------------------
--
create or replace trigger tInsMenu_bill_detail
before insert
on menu_bill_detail
for each row
declare
	indeks number(4);
	temp number(3);
begin
	select count(id) into indeks from menu_bill_detail;
	if indeks is null then
		new_id := to_char(sysdate, 'ddmmyy')||'0001';
	else
		if to_number(indeks)+1 <9		
			temp := to_number(indeks)+1;
			new_id := to_char(sysdate, 'ddmmyy')||lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_id := to_char(sysdate, 'ddmmyy')||lpad(temp, 3, '0');
		end if;
	end if;
	:new.id := new_id;
end;
/
show err;

insert into menu_bill_detail (menu_bill_id,menu_id) VALUES (0112180001,0001);
insert into menu_bill_detail (menu_bill_id,menu_id) VALUES (0212180001,0003);
insert into menu_bill_detail (menu_bill_id,menu_id) VALUES (0212180001,0002);
insert into menu_bill_detail (menu_bill_id,menu_id) VALUES (0312180001,0007);
insert into menu_bill_detail (menu_bill_id,menu_id) VALUES (0312180001,0002);