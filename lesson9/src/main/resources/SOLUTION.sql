select s.* from STUDENT as s join MARK M2 on s.ID = M2.STUDENT_ID group by STUDENT_ID having avg(MARK) > 8;
select s.ID, s.NAME from STUDENT as s join MARK M2 on s.ID = M2.STUDENT_ID group by STUDENT_ID having min(MARK) > 7;
select s.ID, s.NAME from STUDENT as s join PAYMENT P on s.ID = P.STUDENT_ID where YEAR(PAYMENT_DATE) = 2019 group by STUDENT_ID having count(P.ID) > 2;