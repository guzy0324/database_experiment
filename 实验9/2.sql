use school
alter table SC drop constraint FK__SC__cno;
alter table SC drop constraint FK__SC__sno;
alter table SC add constraint FK__SC__cno foreign key (cno)
	references Course(cno) on delete set null;
alter table SC add constraint FK__SC__sno foreign key (sno)
	references Stu_Union(sno) on delete set null;
insert into Stu_Union values ('10001', '����', '0', 24, 'EE');
insert into sc values ('10001', '0001', 2);
insert into sc values ('10001', '0002', 2);
select * from SC
delete from Stu_Union where sno = '10001';
select * from SC
