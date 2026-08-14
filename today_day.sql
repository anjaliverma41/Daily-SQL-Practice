-- Write a Query to provide the date for nth occurrence of Sunday in future from given date
-- datepart
-- sunday-1
-- monday-2
-- friday-6
-- saturday-7


declare @today_date date;
declare @n int;
set @today_date ='2022-01-03'; -- saturday
set @n = 3;

select dateadd(week,@n-1,dateadd(day, 8 - datepart(weekday,@today_date),@today_date))

