create table Device_type
(
visiter_ID int,
sales_Date date,
divice_type varchar(100)
)

select * from Device_type

insert into Device_type values (1, '2022-08-15' ,'MObile')
insert into Device_type values (1, '2022-08-15' ,'Tablet')
insert into Device_type values (1, '2022-08-15' ,'Laptop')
insert into Device_type values (2, '2022-08-22' ,'MObile')
insert into Device_type values (2, '2022-08-22' ,'Laptop')
insert into Device_type values (3, '2022-09-02' ,'MObile')

-- Write a query to show total Qty sales of each Device Type in a separate Cpolumn ?
-- Write a query to show total Qty sales of Device but Laptop seprately and combined of Mobile +Tablet ?


SELECT 
    SUM(CASE 
            WHEN divice_type IN ('MObile', 'Tablet') 
            THEN 1 
            ELSE 0 
        END) AS Mobile_Tablet,

    SUM(CASE 
            WHEN divice_type = 'Laptop' 
            THEN 1 
            ELSE 0 
        END) AS Laptop
FROM Device_type;