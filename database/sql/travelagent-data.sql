connect admintravelagent/admin@travelagent

create or replace trigger tInsAgent
before insert
on agent
for each row
declare
	indeks number(4);
	temp number(5);
	new_agent_id varchar2(10);
begin
	select count(agent_id) into indeks from agent;
	if indeks is null THEN
		new_agent_id := '0001';
	else
		if to_number(indeks)+1 < 9 then
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
	new_reservation_id varchar2(10);
begin
	select count(reservation_id) into indeks from reservation;
	if indeks is null then
		new_reservation_id := substr(to_char(:old.check_in),0,4)||to_char(:old.check_out)||'0001';
	else
		if to_number(indeks)+1 <9 then	
			temp := to_number(indeks)+1;
			new_reservation_id := substr(to_char(:old.check_in),0,4)||to_char(:old.check_out)||lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_reservation_id := substr(to_char(:old.check_in),0,4)||to_char(:old.check_out)||lpad(temp, 3, '0');
		end if;
	end if;
	:new.reservation_id := new_reservation_id;
end;
/
show err;

insert into reservation (customer_id,agent_id,check_in,check_out) VALUES (1,1,TO_DATE('2018/12/16', 'yyyy/mm/dd'),TO_DATE('2018/12/17', 'yyyy/mm/dd'));
insert into reservation (customer_id,agent_id,check_in,check_out) VALUES (2,1,TO_DATE('2018/12/16', 'yyyy/mm/dd'),TO_DATE('2018/12/17', 'yyyy/mm/dd'));
insert into reservation (customer_id,agent_id,check_in,check_out) VALUES (3,3,TO_DATE('2018/12/16', 'yyyy/mm/dd'),TO_DATE('2018/12/17', 'yyyy/mm/dd'));
insert into reservation (customer_id,agent_id,check_in,check_out) VALUES (4,3,TO_DATE('2018/12/16', 'yyyy/mm/dd'),TO_DATE('2018/12/17', 'yyyy/mm/dd'));
insert into reservation (customer_id,agent_id,check_in,check_out) VALUES (5,1,TO_DATE('2018/12/16', 'yyyy/mm/dd'),TO_DATE('2018/12/17', 'yyyy/mm/dd'));

----------------------------------------------------------------------------------------------------
--
create or replace trigger tInsReservation_detail
before insert
on reservation_detail
for each row
declare
	indeks number(4);
	temp number(3);
	new_reservation_detail_id varchar2(10);
begin
	select count(reservation_detail_id) into indeks from reservation_detail;
	if indeks is null then
		new_reservation_detail_id := '0001';
	else
		if to_number(indeks)+1 <9 then	
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

insert into reservation_detail(reservation_id, room_type, qty,price) VALUES ('0001',1,1,250000);
insert into reservation_detail(reservation_id, room_type, qty,price) VALUES ('0002',2,1,350000);
insert into reservation_detail(reservation_id, room_type, qty,price) VALUES ('0003',3,1,450000);
insert into reservation_detail(reservation_id, room_type, qty,price) VALUES ('0004',4,1,550000);
insert into reservation_detail(reservation_id, room_type, qty,price) VALUES ('0005',5,1,650000);

commit;