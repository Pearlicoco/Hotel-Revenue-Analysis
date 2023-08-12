WITH Hotels AS (
SELECT *
FROM dbo.['2018$']
UNION
select *
from dbo.['2019$']
UNION
select *
from dbo.['2020$'])

SELECT 
arrival_date_year,
hotel,
round(sum((stays_in_week_nights + stays_in_weekend_nights) * adr),2) Revenue
FROM Hotels
group by arrival_date_year, hotel
