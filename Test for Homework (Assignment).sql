-- show all element of table employees
select * from employees;
 
insert into employees values(1,'Ahmadi');

-- way of deleting a Record
delete from Table_naem where di = id_number(condition)
-- show the table quries 
desc employees;
-- alter is used for adding colmun, modifying column,droping and renaming a column,
alter table employees add phone number;
 
 alter table employees add emailadd char;
 alter table employees add(paymoney number(2,2));

 -- how to update the data type of a variable 
 alter table employees modify coll varchar2(25);
-- how to drop a column --> alter table table_name drop column column_name
-- first step for droping,
alter table employees drop column coll;
desc employees;
alter table employees modify paymoney varchar2(30);
  -- Second step for droping,
  drop table table_name;
 insert into employees values(11,'jan',0993519,'qudratullahahamadi85@gmail.com',
 100000,'Null');
  insert into employees values(12,'Gul',5645619,'jangul@gmail.com',
 4560,'Null');
  insert into employees values(14,'ali',46546,'alikah@gmail.com',
 345760,'Null');
-- way of chang the constriant of a variable, 
  alter table employees modify idemp  number not null;
 select * from employees;
   -- way how to add constraint keybord on a variable
  alter table employees add constraint  employees_phone unique(phone);
  alter table employees add constraint employee_pr primary key(idemp); 
  desc employees;
  
   create table departoment(
   did number,
   dname varchar2(22) not null);
   
insert into departoment values(11,'CS','KDR');   
insert into departoment values(22,'economic','KDR');                  
insert into departoment values(33,'CS','Kabul');                  
insert into departoment values(44,'Medical faculty','Herat');                  

 select * from departoment;
  
   
  
  -- ways adding foreign key in defferint ways.
  /*1=> without any changing, there we ues on delete cascade for if we delete the
primary key of main table also delet (remove) all foreign key in child table(second)
*/
alter table employees add constraint emp_dept_rel
  foreign key(did) references departoment(did) on delete cascade;
  
   -- ways adding foreign key in defferint ways.
  /*2=> without any changing, there we ues on delete set null for if we delete the
primary key of main table  But remine in  child table(second), means not delete from 
foreign table
*/
  alter table employees add constraint emp_dept_rel
  foreign key(did) references departoment(did) on delete set null;
  
  
  
  -- Joins in oracle
  join 1.is uesed to get data from multiple tables
        2. at lest one common field must be there to create a join
        3.can be classfied on the basis of data retrival
        
  propartes of join 
                    1. equijoins= never pass any opretor 
                    2. non equijoins = it's give common detils
                    3. outer joins = spesipic the tables both side left and right side 
                    of table while writing a  query,
                    
                    4. self joins = means a table join itself 
 
-- eque join
select nameofRElationship,again can select an other element from Both table names and
sperate with a cama.
finally want a condition for selectiog ,

-- change session for creating user 
alter session set "_oracle_script"=true;
  create user Khan identified by Ahmadi;
  
  -- way for showing all users
select * from all_users;
  -- Show the current user which using
  select * from user_users;

-- grant or active a user for use of resources.
grant connect ,resource to khan;

-- now we can connect to khan user
 connect khan
 
 -- also we can give all priviliges directly to a user Like:
 grant all privilegs to user_name;
 
 -- How to check or show all privileges a user 
 select * from user_sys_privs;
 
 -- way give privileges (permission) to a user;
 
 /*we can write grant connect to user_name or 
 write grante (here we can write every permission which we want to add to our user)
 
 
 */
 grant connect to khan;
 grant greate sessein to khan ;
 grant create table to khan;
 grant unlimtied table space to khan;
 
 -- second way for grant a user(means create Tablespace)
 create tablespace khanspace
 DATAFILE 'khanspace.dat'
SIZE  99M ;

-- create a quota for a user for tablespace 
alter user khan QUOTA unlimited on khanspace;

-- how to check tablespace of a user
 desc v$tablespace;
 
 select * from v$tablespace;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


