select * from PAYMENT where TYPE_ID = (select ID from PAYMENTTYPE where NAME = 'MONTHLY');
select * from MARK where SUBJECT_ID in (select id from SUBJECT where NAME = 'Art');
select distinct S.* from STUDENT as S join PAYMENT P on S.ID = P.STUDENT_ID where p.TYPE_ID = (select id from PAYMENTTYPE where NAME = 'WEEKLY');
select distinct s.* from STUDENT as s join MARK M2 on s.ID = M2.STUDENT_ID join SUBJECT S2 on S2.ID = M2.SUBJECT_ID where MARK is not null and S2.NAME = 'Math';