create table food_group(fid serial, fname varchar(13));
insert into food_group(fname) VALUES('VEG');
insert into food_group(fname) VALUES('NONVEG');
insert into food_group(fname) VALUES('CHINESE');
SELECT * FROM food_group

create table qty_master(qid serial, qtype varchar(22));
insert into qty_master(qtype) VALUES('FULL');
insert into qty_master(qtype) VALUES('HALF');
insert into qty_master(qtype) VALUES('ONE-THIRD');
insert into qty_master(qtype) VALUES('ONE-FOURTH');
SELECT * FROM qty_master;

drop table menu_card
-- MENU CARD
create table menu_card(mid serial, mname varchar(22),fid int,qid int);
alter table menu_card add column price int
SELECT * FROM menu_card;
insert into menu_card(mname,fid,qid,price) VALUES('Paneer_tikka',1,1,250);
insert into menu_card(mname,fid,qid,price) VALUES('Hara_Bhara_Kabab',1,2,300);
insert into menu_card(mname,fid,qid,price) VALUES('Aloo_Tikki',1,4,150);
insert into menu_card(mname,fid,qid,price) VALUES('Fish_Curry',2,1,300);
insert into menu_card(mname,fid,qid,price) VALUES('Chicken_Biryani',2,2,350);
insert into menu_card(mname,fid,qid,price) VALUES('Fried_rice',3,2,160);
insert into menu_card(mname,fid,qid,price) VALUES('Noodles',3,3,200);

select mname,price from food_group,menu_card,qty_master where menu_card.fid =food_group.fid and  menu_card.qid = qty_master.qid



