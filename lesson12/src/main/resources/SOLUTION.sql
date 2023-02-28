DELETE FROM student WHERE id IN (SELECT DISTINCT m.student_id FROM mark AS m JOIN subject AS s ON s.id = m.subject_id WHERE grade >= 4);
delete from STUDENT where id in (select STUDENT_ID from MARK join PUBLIC.STUDENT S on S.ID = MARK.STUDENT_ID where MARK < 4);
delete from PAYMENTTYPE where NAME in (select NAME from PAYMENTTYPE join PAYMENT P on PAYMENTTYPE.ID = P.TYPE_ID where NAME = 'Daily');
delete from MARK where MARK < 7;

