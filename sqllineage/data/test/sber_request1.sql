insert into target_table
with t1 as (
    select *
    from source_table1 st1
             join source_table2 st2 on st1.id1 = st2.id2
)
select r1,
       r2,
       r3
from (
         select coalesce(a, d)                    as r1,
                case when b = e then 1 else 0 end as r2,
                c                                 as r3
         from t1
     );