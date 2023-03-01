alter table STUDENT alter column BIRTHDAY set not null;
alter table MARK add constraint mark_check check (MARK.MARK >= 1 and MARK.MARK <= 10);
alter table MARK alter column SUBJECT_ID set not null;
alter table MARK alter column STUDENT_ID set not null;
alter table SUBJECT add constraint grade_check check (SUBJECT.GRADE >= 1 and  SUBJECT.GRADE <= 5);
alter table PAYMENTTYPE add constraint name_unique unique(NAME);
alter table PAYMENT alter column TYPE_ID set not null;
alter table PAYMENT alter column AMOUNT set not null;
alter table PAYMENT alter column PAYMENT_DATE set not null;