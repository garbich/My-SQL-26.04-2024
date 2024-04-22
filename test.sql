drop table if exists wards;
drop table if exists departmentld;
drop table if exists doctors;
drop table if exists doctorsExaminations;
drop table if exists examinations;

create table if not exists departments(
id  serial not null primary key,
building int not null, 
name varchar(255) NOT NULL unique
);

create table if not exists doctors(
id  serial not null primary key,
name varchar(255) NOT NULL,
premium money not null,
departmentld varchar(255),
salary money not null,
surname varchar(255) not null
);

create table if not exists doctorsExaminations(
id  serial not null primary key,
endTime time not null,
startTime time not null,
doctor_id int not null,
examination_id int not null,
ward_id int not null
);

create table if not exists examinations(
id  not null serial primary key,
name varchar(255) NOT NULL unique
);

create table if not exists wards(
id  serial not null primary key,
name varchar(255) NOT NULL,
places int not null,
department_id int not null
);


INSERT INTO departments (building, name) VALUES
(1, 'Cardiology'),
(2, 'Neurology'),
(3, 'Oncology');

INSERT INTO doctors (name, premium, department_id, salary, surname) VALUES
('John', 2000.00, 1, 7000.00, 'Doe'),
('Alice', 1500.00, 2, 7500.00, 'Smith'),
('Michael', 1800.00, 3, 7200.00, 'Johnson');

INSERT INTO doctorsExaminations (endTime, startTime, doctor_id, examination_id, ward_id) VALUES
('10:00:00', '08:00:00', 1, 1, 1),
('11:30:00', '09:30:00', 2, 2, 2),
('13:00:00', '11:00:00', 3, 3, 3);

INSERT INTO examinations (name) VALUES
('MRI Scan'),
('Echocardiogram'),
('Blood Test');

INSERT INTO wards (name, places, department_id) VALUES
('Ward A', 10, 1),
('Ward B', 12, 2),
('Ward C', 15, 3);




select * 
from wards
where places > 10;









