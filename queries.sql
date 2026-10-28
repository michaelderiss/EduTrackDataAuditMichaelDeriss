## Q1 — Enrollments in 'Intro to Python'

My query: SELECT student_name, student_email, completion_percentage FROM enrollments WHERE course_title = 'Intro to Python';
Result (copied as CSV):
student_name,student_email,completion_percentage

Emily Watson,emily.watson@student.edutrack.com,85
Klaus Weber,klaus.weber@student.edutrack.com,92
Marco Rossi,marco.rossi@student.edutrack.com,88
James Miller,james.miller@test.com,30
Priya Sharma,priya.sharma@student.edutrack.com,55

---------------------------------------------

## Q2 — Enrollments with <10 completion %

My query: SELECT * from enrollments WHERE completion_percentage < 10
Result (copied as CSV):
id,student_id,student_name,student_email,course_id,course_title,category,enrollment_date,completion_percentage,passed,monthly_fee_paid,instructor

5,3,Lucia Fernandes,lucia.fernandes@student.edutrack.com,2,Web Design Basics,Design,2024-06-20,5,false,39.99,Carlos Vega
6,3,Lucia Fernandes,lucia.fernandes@student.edutrack.com,4,Digital Marketing 101,Marketing,2024-07-01,3,false,29.99,Lucia Prades
10,5,Yuki Nakamura,yuki.nakamura@student.edutrack.com,6,UI/UX Fundamentals,Design,2024-10-11,0,false,44.99,null
11,6,Pierre Dubois,pierre.dubois@student.edutrack.com,6,UI/UX Fundamentals,Design,2024-11-05,0,false,44.99,null

-------------------------------------

