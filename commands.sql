-- ALL THE REQUIRED COURSES in general
select  C.ID,course_name, hr_total,sem1,sem2,sem3,rec_year,rec_sem,credit
from course C, course_poss_time P, course_rec_time R
where C.id=P.id and C.id=R.id and done_status=0;

-- ALL courses i've done already or am registerd to
select *
from course C
where done_status in  (1,2);

-- all available courses (the requirements are met)
select distinct C.id as ID, C.course_name as Course,C.credit as Credit, C.hr_total as Hr_Total, req1,req2,req3,req4,req5,req6,req7
from course C, course_req R 
where C.id=R.id and C.id <>ALL(select C.id
								from course C
								where done_status in  (1,2))
and (req1=0 or req1=any(select C.id
								from course C
								where done_status in  (1,2)))
and (req2=0 or req2=any(select C.id
								from course C
								where done_status in  (1,2)))
and (req3=0 or req3=any(select C.id
								from course C
								where done_status in  (1,2)))
and (req4=0 or req4=any(select C.id
								from course C
								where done_status in  (1,2)))                                
and (req5=0 or req5=any(select C.id
								from course C
								where done_status in  (1,2)))
and (req6=0 or req6=any(select C.id
								from course C
								where done_status in  (1,2)))
and (req7=0 or req7=any(select C.id
								from course C
								where done_status in  (1,2)))
and (req8=0 or req8=any(select C.id
								from course C
								where done_status in  (1,2)));                                
	
-- available course in my path:
select P.ID
from my_path P, available_courses A
where P.id=A.id;

    
-- the timing of those available courses in my path
SELECT A.ID, C.course_name,sem1, sem2, sem3
FROM (select P.ID
		from my_path P, available_courses A
		where P.id=A.id) as A,course_poss_time as P, Course C
WHERE A.id=P.id and A.id=C.id;


-- free manipulation: looking for courses in my conditions:

select C.ID, C.course_name, C.sem1, C.sem2, C.sem3, R.rec_year, R.rec_sem
from required_courses_next C, course_rec_time R
WHERE C.id=R.id
and sem3=1 and rec_year in (2,3);


