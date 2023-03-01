alter table MARK drop constraint mark_student_id_fkey;
alter table MARK add constraint mark_student_id_fkey foreign key (STUDENT_ID) references STUDENT(ID) on delete cascade;
alter table PAYMENT drop constraint payment_student_id_fkey;
alter table PAYMENT add constraint payment_student_id_fkey foreign key (STUDENT_ID) references STUDENT(ID) on delete cascade;
alter table PAYMENT drop constraint payment_type_id_fkey;
alter table PAYMENT add constraint payment_type_id_fkey foreign key (TYPE_ID) references PAYMENTTYPE(ID) on DELETE cascade;

-- DELETE FROM student  WHERE STUDENT.id IN (SELECT DISTINCT m.student_id FROM mark AS m JOIN subject AS s ON s.id = m.subject_id WHERE grade >= 4);
-- delete from STUDENT where STUDENT.id in (select distinct m2.STUDENT_ID from MARK as M2 join PAYMENT P on M2.STUDENT_ID = P.STUDENT_ID where M2.MARK < 4);
-- delete from PAYMENTTYPE where PAYMENTTYPE.NAME in (select PAYMENTTYPE.NAME from PAYMENTTYPE join PAYMENT P on PAYMENTTYPE.ID = P.TYPE_ID where PAYMENTTYPE.NAME = 'DAILY');
-- delete from MARK where MARK.MARK < 7;

delete from STUDENT where GROUPNUMBER >= 4;
delete from STUDENT where ID in (select distinct STUDENT_ID from MARK where MARK < 4);
delete from PAYMENTTYPE where NAME = 'DAILY';
delete from MARK where MARK < 7;