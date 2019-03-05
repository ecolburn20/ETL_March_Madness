create database marchmadness;
USE marchmadness;
select Team, Round, Year from big_dance
where Team in ("Duke", "Gonzaga", "Virginia", "North Carolina", "Michigan")
and Round > 4;


