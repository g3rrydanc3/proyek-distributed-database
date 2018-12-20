connect adminlaundry/admin@laundry

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

create or replace trigger tInsLaundry_bill
before insert
on laundry_bill
for each row
declare
	indeks number(4);
	temp number(3);
	tUser varchar2(50);
	new_laundry_bill_id varchar2(10);
begin
	select user into tUser 
	from dual;
	select count(laundry_bill_id) into indeks from laundry_bill;
	if indeks is null then
		new_laundry_bill_id := to_char(sysdate, 'ddmmyy')||'0001';
	else
		if to_number(indeks)+1 <9 then
			temp := to_number(indeks)+1;
			new_laundry_bill_id := to_char(sysdate, 'ddmmyy')||lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_laundry_bill_id := to_char(sysdate, 'ddmmyy')||lpad(temp, 3, '0');
		end if;
	end if;
	:new.laundry_bill_id := new_laundry_bill_id;
		
	if :new.room_no <> 0 then 
		insert into logBill values (sqLogBill.nextval, sysdate, tUser, 'U', new_laundry_bill_id, 'F');
	end if;
end;
/
show err;

begin
  dbms_scheduler.drop_job('updateServiceFromLaundry');
end;
/

create or replace procedure sinkronLaundryToFrontOffice
is
	roomno varchar2(3);
	billdate date;
	total number;
begin
	for i in (select * from logBill where status = 'F')
	loop
		select room_no into roomno from laundry_bill where laundry_bill_id = i.bill_id;
		select bill_date into billdate from laundry_bill where laundry_bill_id = i.bill_id;
		select total into total from laundry_bill where laundry_bill_id = i.bill_id;
		insert into service@keFrontOffice (room_no, service_type, service_date, total) values (roomno, 'laundry', billdate, total);
		update logBill set status = 'T' where bill_id = i.bill_id;
		commit;
	end loop;
end;
/
show err;

begin
dbms_scheduler.create_job (
  job_name => 'updateServiceFromLaundry',
  job_type => 'STORED_PROCEDURE',
  job_action => 'sinkronLaundryToFrontOffice',
  repeat_interval => 'FREQ=MINUTELY; INTERVAL=1',
  enabled => TRUE,
  comments => 'untuk menambahkan service pada Front Office dari menu bill pada laundry'
);
end;
/

insert into laundry_bill (room_no,employee_id,total,bill_date) VALUES (101,'EM001',2000000,to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'));
insert into laundry_bill (room_no,employee_id,total,bill_date) VALUES (102,'EM001',2500000,to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'));
insert into laundry_bill (room_no,employee_id,total,bill_date) VALUES (202,'EM003',2500000,to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'));
insert into laundry_bill (room_no,employee_id,total,bill_date) VALUES (105,'EM001',1500000,to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'));
insert into laundry_bill (room_no,employee_id,total,bill_date) VALUES (104,'EM003',3500000,to_date(to_char(sysdate, 'ddmmyyyy'), 'DD-MM-YYYY'));
------------------------------------------------------------------------------------------
create or replace trigger tInsLaundry_Service
before insert
on laundry_service
for each row
declare
	indeks number(4);
	temp number(3);
	new_laundry_service_id varchar2(4);
begin
	select count(laundry_service_id) into indeks from laundry_service;
	if indeks is null then
		new_laundry_service_id := '0001';
	else
		if to_number(indeks)+1 <9 then
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
	new_laundry_bill_detail_id varchar2(14);
begin
	select count(laundry_bill_detail_id) into indeks from laundry_bill_detail;
	if indeks is null then
		new_laundry_bill_detail_id := :new.laundry_bill_id||'0001';
	else
		if to_number(indeks)+1 <9 then
			temp := to_number(indeks)+1;
			new_laundry_bill_detail_id := :new.laundry_bill_id||lpad(temp, 4, '0');
		else
			temp := to_number(indeks)+1;
			new_laundry_bill_detail_id := :new.laundry_bill_id||lpad(temp, 3, '0');
		end if;
	end if;
	:new.laundry_bill_detail_id := new_laundry_bill_detail_id;
end;
/
show err;

insert into laundry_bill_detail (laundry_bill_id, laundry_service_id, weight, price) values ('2012180004', 1, 10, 500000);

commit;