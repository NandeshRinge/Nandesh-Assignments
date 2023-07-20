use world;

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
(2,"Avengers",2012,143,"Hindi,English",20120427,"India"),
(3,"Baazigar",1993,175,"Hindi",19930915,"India"),
(4,"Dhoom",2004,129,"Hindi",20040514,"India"),
(5,"Dhoom 2",2006,152,"Hindi",20060723,"India"),
(6,"Dhoom 3",2013,172,"Hindi",20130322,"India");

insert into actor values
(1,"Sohum","Shah","M"),(2,"Anita","Date","F"),
(3,"Robert","Downey Jr","M"),(4,"Chris","Evans","M"),(5,"Chris","Hemsworth","M"),
(6,"Scarlett","Johansson","F"), (7,"Shahrukh","Khan","M"),
(8,"Kajol","Devgun","F"),
(9,"Abhishek","Bacchan","M"),
(10,"John","Abharam","M"),
(11,"Aishwarya","Rai","F"),
(12,"Hritik","Roshan","M"),
(13,"Aamir","Khan","M"),
(14,"Katrina","Kaif","F"),
(15,"Uday","Chopra","M");

select * from movie;
select * from actor;

insert into director values
(1,"Rahi","Barve"), (2,"Joss","Whedon"), (3,"Abbas&Mastan","Burmawalla"), (4,"Sanjay","Gadhvi"),
(5,"Vijay Krishna","Acharya");

select * from director;

insert into reviewer values
(1,"Rakesh"), (2,"Joe"), (3,"Nandan"),(4,"Sandesh");

select * from reviewer;

insert into movie_cast values
(1,1,"Lead Actor"),(2,1,"Lead Actress"),(3,2,"Lead Actor"),(4,2,"Lead Actor"),(5,2,"Lead Actor"),
(6,2,"Lead Actress"),(7,3,"Lead Actor"), (8,3,"Lead Actress"),(9,4,"Lead Actor"),(9,5,"Lead Actor"),
(9,6,"Lead Actor"),(10,4,"Lead Actor"),(11,5,"Lead Actress"),(12,5,"Lead Actor"),(13,6,"Lead Actor"),
(14,6,"Lead Actress"),(15,4,"Supporting Actor"),(15,5,"Supporting Actor"),(15,6,"Supporting Actor");

select * from movie_cast;

insert into rating values
(1,1,4,8118),(2,2,4,2337),(3,3,4,4566),(4,4,4,5678),(5,3,6,4956),
(6,2,3,3456);

select * from rating;

insert into genres values
(1,"Horror, Thriller"), (2,"Fantasy, Thriller"),(3,"Thriller,Crime");

select * from genres;

insert into movie_direction values
(1,1),(2,2),(3,3),(4,4),(4,5),(5,6);

select * from movie_direction;

insert into movie_genres values
(1,1),(2,2),(3,1),(4,3),(5,3),(6,3);

select * from movie_genres;

select * from actor order by act_lname;  
#The above 'order by' keyword arranges the column 'act_lname' alphabetically.

select * from rating where num_o_ratings='2337';

select
movie.mov_title,
movie_genres.gen_id
from movie
inner join movie_genres on movie.mov_id=movie_genres.mov_id;

select distinct role from movie_cast;
#Give distinct values in the column role

select * from movie where mov_title like 'D%';
#The above query gives the movie titles starting with 'D'

