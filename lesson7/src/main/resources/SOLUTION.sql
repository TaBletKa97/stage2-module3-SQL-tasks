select * from MARK where MARK > 6 order by MARK desc;
select * from PAYMENT where AMOUNT < 300 order by AMOUNT;
select * from PAYMENTTYPE order by NAME;
select * from STUDENT order by NAME desc;
select distinct s.* from STUDENT as s join PAYMENT P on s.ID = P.STUDENT_ID where AMOUNT > 1000 order by BIRTHDAY;