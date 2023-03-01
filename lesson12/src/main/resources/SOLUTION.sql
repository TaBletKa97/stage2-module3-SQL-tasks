DELETE FROM student  WHERE STUDENT.id IN (SELECT DISTINCT m.student_id FROM mark AS m JOIN subject AS s ON s.id = m.subject_id WHERE grade >= 4);
delete from STUDENT where STUDENT.id in (select distinct m2.STUDENT_ID from MARK as M2 join PAYMENT P on M2.STUDENT_ID = P.STUDENT_ID where M2.MARK < 4);
delete from PAYMENTTYPE where PAYMENTTYPE.NAME in (select PAYMENTTYPE.NAME from PAYMENTTYPE join PAYMENT P on PAYMENTTYPE.ID = P.TYPE_ID where PAYMENTTYPE.NAME = 'Daily');
delete from MARK where MARK.MARK < 7;