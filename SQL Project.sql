use assignments;
create table movie(
mov_id int PRIMARY KEY,
mov_title varchar(20),
mov_year int NOT NULL,
mov_time int,
mov_lang varchar(50),
mov_dt_rel date,
mov_rel_country char(5));

create table actor(
act_id int PRIMARY KEY,
act_fname varchar(20) NOT NULL,
act_lname varchar(20),
act_gender char(1) NOT NULL);

create table director(
dir_id int PRIMARY KEY,
dir_fname varchar(20) NOT NULL,
dir_lname varchar(20));

create table reviewer(
rev_id int PRIMARY KEY,
rev_name varchar(30) NOT NULL);

create table movie_cast(
act_id int,
mov_id int,
role varchar(30),
FOREIGN KEY (act_id)
REFERENCES actor(act_id),
FOREIGN KEY (mov_id)
REFERENCES movie(mov_id));

create table movie_direction(
dir_id int,
mov_id int,
FOREIGN KEY (dir_id)
REFERENCES director(dir_id),
FOREIGN KEY (mov_id)
REFERENCES movie(mov_id));

create table genres(
gen_id int PRIMARY KEY,
gen_title varchar(20) NOT NULL);

create table movie_genres(
mov_id int,
gen_id int,
FOREIGN KEY (mov_id)
REFERENCES movie(mov_id),
FOREIGN KEY (gen_id)
REFERENCES genres(gen_id));

create table rating(
mov_id int,
rev_id int,
rev_stars int NOT NULL,
num_o_ratings int,
FOREIGN KEY (mov_id)
REFERENCES movie(mov_id),
FOREIGN KEY (rev_id)
REFERENCES reviewer(rev_id));

insert into movie values
(1,"Tumbbad",2018,104,"Hindi,Tamil,Marathi",20181012,"India"),
(2,"Avengers",2012,143,"Hindi,English",20120427,"India");

select * from movie;

insert into actor values
(1,"Sohum","Shah","M"),(2,"Anita","Date","F");

insert into director values
(1,"Rahi","Barve");

insert into movie_cast values
(1,1,"Lead Actor"),(2,1,"Lead Actress");

select * from movie_cast;
select * from actor;
truncate table movie_cast;

insert into reviewer values
(1,"Rakesh");

insert into rating values
(1,1,4,8118);

insert into genres values
(1,"Horror, Thriller");

insert into movie_genres values
(1,1);

insert into actor values
(3,"Robert","Downey Jr","M"),(4,"Chris","Evans","M"),(5,"Chris","Hemsworth","M"),
(6,"Scarlett","Johansson","F");

insert into director values
(2,"Joss","Whedon");

insert into movie_direction values
(1,1),(2,2); 

insert into movie_cast values
(3,2,"Lead Actor"),(4,2,"Lead Actor"),(5,2,"Lead Actor"),
(6,2,"Lead Actress");

insert into reviewer values
(2,"Joe");

insert into rating values
(2,2,4.7,2337);

insert into genres values
(2,"Fantasy, Thriller");

insert into movie_genres values
(2,2);
select * from movie;
select * from actor;
select * from director;
select * from movie_cast;
select * from movie_genres;
select * from rating;
select * from genres;
select * from reviewer;
select * from movie_direction;