.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet from students where color='blue' and pet='dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song from students where color='blue' and pet='dog';

CREATE TABLE smallest_int AS
  SELECT time, smallest from students where smallest > 2 order by smallest LIMIT 20;
  -- find the smallest unique integer.
  -- SELECT time, smallest from (select time, smallest, count(*) as count from students group by smallest) where smallest > 2 and count =1 order by smallest LIMIT 1;

CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color as first, b.color as second from students as a, students as b where a.pet = b.pet and a.song = b.song and a.time < b.time;


CREATE TABLE sevens AS
  SELECT seven from students, numbers where number = 7 and students.time = numbers.time and numbers.'7' = 'True'; 
