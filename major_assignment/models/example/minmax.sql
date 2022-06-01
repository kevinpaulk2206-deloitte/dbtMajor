select code ,min(nav) as min_nav ,max(nav) as max_nav from "ASSIGNMENT"."MAJOR_SCHEMA"."NAVHISTORY" group by code
