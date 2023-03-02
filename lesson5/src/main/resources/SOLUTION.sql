select * from PAYMENT where AMOUNT >= 500;
select * from STUDENT where BIRTHDAY < dateadd('YEAR', -20, '2023-03-02');
select * from STUDENT where GROUPNUMBER = 10 and BIRTHDAY > dateadd('YEAR', -20, '2023-03-02');
select * from STUDENT where NAME like 'Mike%' or GROUPNUMBER between 4 and 6;
SELECT * FROM payment WHERE DATEADD('MONTH', -8, CURRENT_DATE) < payment_date;
select * from STUDENT where NAME like 'A%';
select * from STUDENT where (NAME like 'Roxi%' and GROUPNUMBER = 4) or NAME like 'Tallie' and  GROUPNUMBER = 9;