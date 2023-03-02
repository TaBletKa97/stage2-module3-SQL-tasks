delete from STUDENT  WHERE GROUPNUMBER >= 4;
delete from STUDENT where ID in (select distinct STUDENT_ID from MARK where MARK < 4);
delete from PAYMENTTYPE where NAME = 'DAILY';
delete from MARK where MARK < 7;