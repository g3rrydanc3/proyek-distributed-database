connect adminrestaurant/admin@restaurant

create or replace trigger tInsMenu
before insert
on menu
for each row
declare
	indeks number(4);
	temp number(3);
	new_id varchar2(4);
begin
	select count(menu_id) into indeks from menu;
	if indeks is null then
		new_id := '0001';
	else
		if to_number(indeks)+1 <9 then
			temp := to_number(indeks)+1;
			new_id := lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_id := lpad(temp, 3, '0');
		end if;
	end if;
	:new.menu_id := new_id;
end;
/
show err;

insert into menu (menu_name,menu_type,price) VALUES ('Aglio Olio','Food',100000);
insert into menu (menu_name,menu_type,price) VALUES ('Burger Krezz','Food',200000);
insert into menu (menu_name,menu_type,price) VALUES ('Chicken Katsudon','Food',300000);
insert into menu (menu_name,menu_type,price) VALUES ('Donburi Mayo','Food',400000);
insert into menu (menu_name,menu_type,price) VALUES ('Egg Benedict','Food',500000);
insert into menu (menu_name,menu_type,price) VALUES ('Aquase','Beverages',150000);
insert into menu (menu_name,menu_type,price) VALUES ('Beer Splash','Beverages',250000);
insert into menu (menu_name,menu_type,price) VALUES ('Cocktail Soda','Beverages',350000);
insert into menu (menu_name,menu_type,price) VALUES ('Dragon Lemonade','Beverages',450000);
insert into menu (menu_name,menu_type,price) VALUES ('Espresso Torabika','Beverages',550000);

------------------------------------------------------------------------------------------------
create or replace trigger tInsMenu_bill
before insert
on menu_bill
for each row
declare
	indeks number(4);
	temp number(3);
	new_id varchar2(12);
begin
	select count(menu_bill_id) into indeks from menu_bill;
	if indeks is null then
		new_id := to_char(sysdate, 'ddmmyy')||'0001';
	else
		if to_number(indeks)+1 <9 then
			temp := to_number(indeks)+1;
			new_id := to_char(sysdate, 'ddmmyy')||lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_id := to_char(sysdate, 'ddmmyy')||lpad(temp, 3, '0');
		end if;
	end if;
	:new.menu_bill_id := new_id;
end;
/
show err;


insert into menu_bill (employee_id, room_no, table_no, total, bill_date) VALUES ('EM001',0,2,200000,to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'));
insert into menu_bill (employee_id, room_no, table_no, total, bill_date) VALUES ('EM002',0,1,450000,to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'));
insert into menu_bill (employee_id, room_no, table_no, total, bill_date) VALUES ('EM005',0,1,100000,to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'));
insert into menu_bill (employee_id, room_no, table_no, total, bill_date) VALUES ('EM004',0,2,750000,to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'));
insert into menu_bill (employee_id, room_no, table_no, total, bill_date) VALUES ('EM004',0,2,200000,to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'));

----------------------------------------------------------------------------------------------------
--
create or replace trigger tInsMenu_bill_detail
before insert
on menu_bill_detail
for each row
declare
	indeks number(4);
	temp number(3);
	new_id varchar2(10);
begin
	select count(menu_bill_detail_id) into indeks from menu_bill_detail;
	if indeks is null then
		new_id := to_char(sysdate, 'ddmmyy')||'0001';
	else
		if to_number(indeks)+1 <9 then
			temp := to_number(indeks)+1;
			new_id := to_char(sysdate, 'ddmmyy')||lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_id := to_char(sysdate, 'ddmmyy')||lpad(temp, 3, '0');
		end if;
	end if;
	:new.menu_bill_detail_id := new_id;
end;
/
show err;

insert into menu_bill_detail (menu_bill_id,menu_id) VALUES (1812180004,0001);
insert into menu_bill_detail (menu_bill_id,menu_id) VALUES (1812180004,0003);
insert into menu_bill_detail (menu_bill_id,menu_id) VALUES (1812180004,0002);
insert into menu_bill_detail (menu_bill_id,menu_id) VALUES (1812180004,0007);
insert into menu_bill_detail (menu_bill_id,menu_id) VALUES (1812180004,0002);