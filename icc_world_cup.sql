--Find the total number of matches played, matches won, and matches lost by each team in 
--the ICC World Cup. Display the teams in descending order of matches won.

create table icc_world_cup
(
Team_1 Varchar(20),
Team_2 Varchar(20),
Winner Varchar(20)
);
INSERT INTO icc_world_cup values('India','SL','India');
INSERT INTO icc_world_cup values('SL','Aus','Aus');
INSERT INTO icc_world_cup values('SA','Eng','Eng');
INSERT INTO icc_world_cup values('Eng','NZ','NZ');
INSERT INTO icc_world_cup values('Aus','India','India');

select * from icc_world_cup; 


select team_name , count(1) as no_of_match_playrs, sum(Win_flag) as no_of_match_won , count(1)-  sum(Win_flag) as  no_of_losser
from(
select Team_1 as team_name,
case when Team_1  = Winner then 1 else 0  end as Win_flag
from  icc_world_cup

union all

select Team_2 as team_name,
case when Team_2 = Winner then 1 else 0  end as Win_flag
from icc_world_cup)A
group by team_name
order by no_of_match_won DESC ;
