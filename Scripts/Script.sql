SELECT * FROM tab;

create table student(
	student_no number primary key,
	student_name varchar2(30) not null,
	student_tel char(11) not null,
	student_email varchar2(50),
	student_addr varchar2(256),
	reg_date date default sysdate
);

create sequence seq_student;

insert into student values (seq_student.nextval, '홍길동', '01012345678', 'honggd@google.com','서울시 강남구', default);

SELECT * FROM student;

create table animal(
	animal_no number primary key,
	animal_type varchar2(20),
	animal_name varchar2(30) not null,
	animal_mom varchar2(20) not null,
	animal_addr varchar2(300),
	reg_date date default sysdate
);


insert into animal values (seq_animal.nextval,'뽀짝이','고양이','윤진','경기도 군포시', default);

ALTER TABLE animal MODIFY animal_mom varchar2(20);

SELECT * FROM animal;