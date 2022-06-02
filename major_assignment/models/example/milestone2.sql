select (((nav at end date - nav at start date)/nav at start date)*100) as YTD,
(((nav at end date - nav at start date)/nav at start date)*100) as MTD,
year,
((ending investment value)/ (beginning investment value) ^ (1/n)-1) as inception_returns

select (max(nav)-min(nav)/max(nav))*100 as YTD
from "ASSIGNMENT"."MAJOR_SCHEMA"."NAVHISTORY","ASSIGNMENT"."MAJOR_SCHEMA"."MUTUALFUND"
where date_part(year,nav_Date) = '2019'
group by name

select max(nav_date)
from "ASSIGNMENT"."MAJOR_SCHEMA"."NAVHISTORY","ASSIGNMENT"."MAJOR_SCHEMA"."MUTUALFUND"
where date_part(year,nav_date)= '2019' and "ASSIGNMENT"."MAJOR_SCHEMA"."NAVHISTORY".code = "ASSIGNMENT"."MAJOR_SCHEMA"."MUTUALFUND".code
in (select max(n.nav) from "ASSIGNMENT"."MAJOR_SCHEMA"."NAVHISTORY" n, "ASSIGNMENT"."MAJOR_SCHEMA"."MUTUALFUND" m
   group by m.name, n.nav)

select max(nav)
from "ASSIGNMENT"."MAJOR_SCHEMA"."NAVHISTORY","ASSIGNMENT"."MAJOR_SCHEMA"."NAVHISTORY"
