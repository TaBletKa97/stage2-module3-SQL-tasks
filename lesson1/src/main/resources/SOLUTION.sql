CREATE TABLE Student("id" bigint PRIMARY KEY not null auto_increment, "name" varchar, "birthday" date, "group" int);
CREATE TABLE Subject("id" bigint PRIMARY KEY not null auto_increment, "name" varchar, "description" varchar, "grade" int);
CREATE TABLE PaymentType("id" bigint PRIMARY KEY not null auto_increment, "name" varchar);
CREATE TABLE Payment("id" bigint PRIMARY KEY not null auto_increment, "type_id" bigint, "amount" decimal, "student_id" bigint, "payment_date" datetime, foreign key ("type_id") references PaymentType("id"), foreign key ("student_id") references Student("id"));
CREATE TABLE Mark("id" bigint PRIMARY KEY not null auto_increment, "student_id" bigint, subject_id bigint, "mark" int, foreign key ("student_id") references Student("id"), foreign key (subject_id) references Subject("id"));


