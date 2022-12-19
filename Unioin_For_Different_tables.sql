SELECT tbl.ids,count(tbl.ids)
from
(
SELECT t1.id as ids from tmp1 t1
UNION ALL
SELECT t2.id as ids from tmp2 t2
)tbl GROUP BY tbl.ids;