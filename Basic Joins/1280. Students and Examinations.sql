select S.student_id,S.student_name,
Su.subject_name,count(E.subject_name)
as attended_exams
from Students S
join subjects Su
left join Examinations E 
on S.student_id=E.student_id and
 Su.subject_name=E.subject_name
 group by S.student_id,Su.subject_name
 order by S.student_id,Su.subject_name;
