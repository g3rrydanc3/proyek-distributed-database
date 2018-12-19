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
create sequence sqLogBill
  minvalue 1
  start with 1
  increment by 1;
  
create table logBill (
  logNo number constraint pk_log_bill primary key,
  changeDate date,
  changeUser varchar2(50),
  changeDML varchar2(1),
  bill_id varchar2(10),
  status varchar2(1)
);

create or replace trigger tInsMenu_bill
before insert or update
on menu_bill
for each row
declare
	indeks number(4);
	temp number(3);
	new_id varchar2(12);
	tUser varchar2(50);
	roomno number(3);
begin
	select user into tUser 
	from dual;

	if inserting then
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
	elsif updating then
		if :new.room_no <> 0 then 
			insert into logBill values (sqLogBill.nextval, sysdate, tUser, 'U', :old.menu_bill_id, 'F');
		end if;
	end if;
end;
/
show err;

create or replace procedure sinkronRestaurantToFrontOffice
is
	roomno varchar2(3);
	billdate date;
	total number;
begin
	for i in (select * from logBill where status = 'F')
	loop
		select room_no into roomno from menu_bill where menu_bill_id = i.bill_id;
		select bill_date into billdate from menu_bill where menu_bill_id = i.bill_id;
		select total into total from menu_bill where menu_bill_id = i.bill_id;
		insert into service@keFrontOffice (room_no, service_type, service_date, total) values (roomno, 'restaurant', billdate, total);
		update logBill set status = 'T' where bill_id = i.bill_id;
		commit;
	end loop;
end;
/
show err;

begin
dbms_scheduler.create_job (
  job_name => 'updateServiceFromRestaurant',
  job_type => 'STORED_PROCEDURE',
  job_action => 'sinkronRestaurantToFrontOffice',
  repeat_interval => 'FREQ=MINUTELY; INTERVAL=1',
  enabled => TRUE,
  comments => 'untuk menambahkan service pada Front Office dari menu bill pada restaurant'
);
end;
/

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

insert into menu_bill_detail (menu_bill_id,menu_id, qty, total) VALUES (1912180001,0001, 1, 200000);
insert into menu_bill_detail (menu_bill_id,menu_id, qty, total) VALUES (1912180002,0003, 1, 450000);
insert into menu_bill_detail (menu_bill_id,menu_id, qty, total) VALUES (1912180003,0002, 1, 100000);
insert into menu_bill_detail (menu_bill_id,menu_id, qty, total) VALUES (1912180004,0007, 1, 750000);
insert into menu_bill_detail (menu_bill_id,menu_id, qty, total) VALUES (1912180005,0002, 1, 20000);

commit;