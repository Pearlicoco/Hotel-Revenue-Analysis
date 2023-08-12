WITH Hotels AS (
SELECT *
FROM dbo.['2018$']
UNION
select *
from dbo.['2019$']
UNION
select *
from dbo.['2020$'])

select *
from Hotels
left join dbo.market_segment$
on Hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = Hotels.meal