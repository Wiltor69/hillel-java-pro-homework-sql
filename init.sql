create database hillelhomework

use hillelhomework;
create table Homework(
 id int primary key auto_increment,
name varchar (50),
 description varchar(150)
 );
 
create table Lesson (
id int primary key auto_increment,
 name varchar (50),
updatedAt varchar(150),
homework_id int unique,  foreign key (homework_id) references Homework(id)  
 );

create table Schedule (
id int primary key auto_increment,
name varchar (50),
updatedAt varchar(150),
lessons int
);

create table ScheduleLesson (
id int primary key auto_increment,
lessonId int,
scheduleId int,
foreign key (lessonId) references Lesson(id),
foreign key (scheduleId) references Schedule(id)
);
show tables

