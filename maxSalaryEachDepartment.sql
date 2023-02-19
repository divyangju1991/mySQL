select
  d.name_dep, e.person_name, t.salary
from Dep d inner join (
  select id_dep, max(salary) salary
  from Emp
  group by id_dep
) t on t.id_dep = d.id_dep
inner join Emp e on e.id_dep = t.id_dep and e.salary = t.salary;

/*
create table Dep(name_dep varchar(100), id_dep int);

insert into Dep values("econ", 1);
insert into Dep values("credit", 2);
insert into Dep values("energy", 3);
insert into Dep values("retail", 4);
insert into Dep values("manufactury", 5);

create table Emp(id_emp int, id_dep int, age int, person_name varchar(100), salary int );
insert into Emp values(1, 1, 23, 'john', 200);
insert into Emp values(3, 2, 3, 'dalbai', 100);
insert into Emp values(6, 3, 53, 'borat', 300);
insert into Emp values(7, 1, 63, 'erjan', 1600);
insert into Emp values(9, 2, 73, 'sergey', 1000);
insert into Emp values(8, 5, 83, 'lucy', 20);
insert into Emp values(90, 4, 93, 'mike', 1200);
*/