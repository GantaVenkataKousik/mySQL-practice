select unique_id,name from Employees E1 left join
EmployeeUNI E2 on E1.id = E2.id
order by name;
