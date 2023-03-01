select * from PAYMENT where AMOUNT >= 500;
select * from STUDENT where BIRTHDAY < dateadd('YEAR', -20, '2023-03-01');
select * from STUDENT where GROUPNUMBER = 10 and BIRTHDAY > dateadd('YEAR', -20, '2023-03-01');
select * from STUDENT where NAME like 'Mike%' or GROUPNUMBER between 4 and 6;
select * from PAYMENT where PAYMENT_DATE >= dateadd('MONTH', -8, '2023-03-01');
select * from STUDENT where NAME like 'A%';
select * from STUDENT where (NAME like 'Roxi%' and GROUPNUMBER = 4) or NAME like 'Tallie' and  GROUPNUMBER = 9;