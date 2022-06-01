SELECT month(nav_date) as nav_month, code,AVG(nav) as nav_avg, AVG(repurchase_price) as repurchase_avg, AVG(sale_price) as sale_avg FROM "ASSIGNMENT"."MAJOR_SCHEMA"."NAVHISTORY"
GROUP BY code, nav_month
