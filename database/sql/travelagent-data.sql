connect admintravelagent/admin@travelagent

create or replace trigger tInsCustomer
before insert
on customer
for each row
declare
	indeks number(4);
	temp number(3);
begin
	select count(customer_id) into indeks from customer;
	if indeks is null then
		new_customer_id := '0001';
	else
		if to_number(indeks)+1 <9		
			temp := to_number(indeks)+1;
			new_customer_id := lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_customer_id := lpad(temp, 3, '0');
		end if;
	end if;
	:new.customer_id := new_customer_id;
end;
/
show err;

insert into customer (first_name, last_name, address, phone) VALUES ('Ananda','Albani', 'Ani', 'Ngagel Jaya 13 Surabaya', '00000000');
insert into customer (first_name, last_name, address, phone) VALUES ('Bagus','Berbakti', 'Bakti', 'Tambak Sari Rejo 15 Surabaya', '11111111');
insert into customer (first_name, last_name, address, phone) VALUES ('Cikita','Cirzani', 'Cizani', 'Karangmenjangan 12 Surabaya', '22222222');
insert into customer (first_name, last_name, address, phone) VALUES ('Denada','Donny', 'Deny', 'Menur 12 A Surabaya', '33333333');
insert into customer (first_name, last_name, address, phone) VALUES ('Ertos','Ekalipta', 'Epta', 'Rungkut Tengah 16 gang buntu Surabaya', '44444444');

------------------------------------------------------------------------------------------
create or replace trigger tInsAgent
before insert
on agent
for each row
declare
	indeks number(4);
	temp number(3);
begin
	select count(agent_id) into indeks from agent;
	if indeks is null then
		new_agent_id := '0001';
	else
		if to_number(indeks)+1 <9		
			temp := to_number(indeks)+1;
			new_agent_id := lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_agent_id := lpad(temp, 3, '0');
		end if;
	end if;
	:new.agent_id := new_agent_id;
end;
/
show err;

insert into agent (name,username,password) VALUES ('Airbnb','Airbnb','aaaa');
insert into agent (name,username,password) VALUES ('Pegipegi','Pegipegi','pppp');
insert into agent (name,username,password) VALUES ('Traveloka','Traveloka','tttt');
insert into agent (name,username,password) VALUES ('Airyrooms','Airyrooms','rrrr');
insert into agent (name,username,password) VALUES ('Dealoka','Dealoka','dddd');

------------------------------------------------------------------------------------------------
create or replace trigger tInsReservation
before insert
on reservation
for each row
declare
	indeks number(4);
	temp number(3);
begin
	select count(reservation_id) into indeks from reservation;
	if indeks is null then
		new_reservation_id := substr(to_char(:old.check_in),0,4)||to_char(:old.check_out)||'0001';
	else
		if to_number(indeks)+1 <9		
			temp := to_number(indeks)+1;
			new_id := substr(to_char(:old.check_in),0,4)||to_char(:old.check_out)||lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_id := substr(to_char(:old.check_in),0,4)||to_char(:old.check_out)||lpad(temp, 3, '0');
		end if;
	end if;
	:new.reservation_id := new_reservation_id;
end;
/
show err;

insert into reservation (customer_id,agent_id,check_in,check_out) VALUES (0001,0001,'011118','051118');
insert into reservation (customer_id,agent_id,check_in,check_out) VALUES (0002,0001,'111118','151118');
insert into reservation (customer_id,agent_id,check_in,check_out) VALUES (0003,0003,'211118','251118');
insert into reservation (customer_id,agent_id,check_in,check_out) VALUES (0004,0003,'011218','021218');
insert into reservation (customer_id,agent_id,check_in,check_out) VALUES (0005,0001,'011218','051218');

----------------------------------------------------------------------------------------------------
--
create or replace trigger tInsReservation_detail
before insert
on reservation_detail
for each row
declare
	indeks number(4);
	temp number(3);
begin
	select count(reservation_detail_id) into indeks from reservation_detail;
	if indeks is null then
		new_reservation_detail_id := '0001';
	else
		if to_number(indeks)+1 <9		
			temp := to_number(indeks)+1;
			new_reservation_detail_id := lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_reservation_detail_id := lpad(temp, 3, '0');
		end if;
	end if;
	:new.reservation_detail_id:= new_reservation_detail_id;
end;
/
show err;

insert into reservation_detail(reservation_id, room_type, qty,price) VALUES (01110511180001,'Superior Single',1,250000);
insert into reservation_detail(reservation_id, room_type, qty,price) VALUES (11111511180002,'Superior Double',1,350000);
insert into reservation_detail(reservation_id, room_type, qty,price) VALUES (21112511180003,'Deluxe Single',1,450000);
insert into reservation_detail(reservation_id, room_type, qty,price) VALUES (01120212180004,'Deluxe Double',1,550000);
insert into reservation_detail(reservation_id, room_type, qty,price) VALUES (01120512180005,'King Single',1,650000);