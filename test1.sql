drop table if exists wards;
drop table if exists departmentld;
drop table if exists doctors;

create table if not exists departments(
id int serial not null primary key,
building int not null 
name varchar(255) NOT NULL unique
);

create table if not exists doctors(
id int serial not null primary key,
name varchar(255) NOT NULL,
premium money not null,
departmentld varchar(255),
salary money not null,
surname varchar(255) not null
);

create table if not exists doctorsExaminations(
id int serial not null primary key,
endTime time not null,
startTime time not null,
doctor_id int not null,
examination_id int not null,
ward_id int not null
);

create table if not exists examinations(
id int not null serial primary key,
name varchar(255) NOT NULL unique
);

create table if not exists wards(
id int serial not null primary key,
name varchar(255) NOT NULL,
places int not null,
department_id int not null
);



















