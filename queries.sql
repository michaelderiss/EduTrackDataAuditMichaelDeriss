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
## Q3 - Null instructors
My query: SELECT * from enrollments WHERE instructor is NULL;
Result (copied as CSV):
id,student_id,student_name,student_email,course_id,course_title,category,enrollment_date,completion_percentage,passed,monthly_fee_paid,instructor

10,5,Yuki Nakamura,yuki.nakamura@student.edutrack.com,6,UI/UX Fundamentals,Design,2024-10-11,0,false,44.99,null
11,6,Pierre Dubois,pierre.dubois@student.edutrack.com,6,UI/UX Fundamentals,Design,2024-11-05,0,false,44.99,null

--------------------------------------
## Q4 - top 5 completion %
My query: SELECT student_name, student_id, completion_percentage from enrollments ORDER BY completion_percentage desc LIMIT 5; 
Result (copied as CSV):
student_name,student_id,completion_percentage

Marco Rossi,4,95
Klaus Weber,2,92
Marco Rossi,4,88
Emily Watson,1,85
Klaus Weber,2,78

--------------------------------------
## Q5 - top 5 completion %
My query: SELECT * from enrollments WHERE enrollment_date >= '2024-07-01' ORDER BY enrollment_date DESC;
Result (copied as CSV):
id,student_id,student_name,student_email,course_id,course_title,category,enrollment_date,completion_percentage,passed,monthly_fee_paid,instructor

17,1,Emily Watson,emily.watson@student.edutrack.com,5,Advanced Python,Programming,2025-03-05,40,false,69.99,Carlos Vega
16,6,Pierre Dubois,pierre.dubois@student.edutrack.com,3,Data Analysis with SQL,Data,2025-02-20,20,false,59.99,Marta López
15,7,Priya Sharma,priya.sharma@student.edutrack.com,1,Intro to Python,Programming,2025-01-10,55,false,49.99,Marta López
12,7,Priya Sharma,priya.sharma@student.edutrack.com,4,Digital Marketing 101,Marketing,2024-12-01,70,true,29.99,Lucia Prades
11,6,Pierre Dubois,pierre.dubois@student.edutrack.com,6,UI/UX Fundamentals,Design,2024-11-05,0,false,44.99,null
10,5,Yuki Nakamura,yuki.nakamura@student.edutrack.com,6,UI/UX Fundamentals,Design,2024-10-11,0,false,44.99,null
9,5,Yuki Nakamura,yuki.nakamura@student.edutrack.com,3,Data Analysis with SQL,Data,2024-09-03,45,false,59.99,Marta López
8,4,Marco Rossi,marco.rossi@student.edutrack.com,1,Intro to Python,Programming,2024-08-09,88,true,49.99,Marta López
6,3,Lucia Fernandes,lucia.fernandes@student.edutrack.com,4,Digital Marketing 101,Marketing,2024-07-01,3,false,29.99,Lucia Prades

---------------------------------------------
## Q6 Adding missing row

My query: INSERT INTO enrollments (id, student_id, student_name, student_email, course_id, course_title, category, enrollment_date, completion_percentage, passed, monthly_fee_paid, instructor) VALUES
(18,  3, 'Lucia Fernandes',   'lucia.fernandes@student.edutrack.com', 5, 'Advanced Python',      'Programming',      '2025-04-01',  0, FALSE, 69.99, 'Carlos Vega');

Result (copied as CSV):
(Didn't print anything but was verified with 'SELECT * FROM enrollments WHERE id = 18')

---------------------------------------------
## Q7 Updating null rows w/ default

My query: UPDATE enrollments SET instructor = 'Pending assignment' WHERE instructor is null;

Result (copied as CSV):
(Didn't print anything but was verified with "SELECT * FROM enrollments WHERE instructor is null");

---------------------------------------------
## Q8 Deleting test.com emails

My query:  DELETE from enrollments where student_email LIKE '%test.com';

Result (copied as CSV):
id,student_id,student_name,student_email,course_id,course_title,category,enrollment_date,completion_percentage,passed,monthly_fee_paid,instructor
  
1,1,Emily Watson,emily.watson@student.edutrack.com,1,Intro to Python,Programming,2024-03-10,85,true,49.99,Marta López
2,1,Emily Watson,emily.watson@student.edutrack.com,2,Web Design Basics,Design,2024-04-15,60,false,39.99,Carlos Vega
3,2,Klaus Weber,klaus.weber@student.edutrack.com,1,Intro to Python,Programming,2024-03-12,92,true,49.99,Marta López
4,2,Klaus Weber,klaus.weber@student.edutrack.com,3,Data Analysis with SQL,Data,2024-05-01,78,true,59.99,Marta López
5,3,Lucia Fernandes,lucia.fernandes@student.edutrack.com,2,Web Design Basics,Design,2024-06-20,5,false,39.99,Carlos Vega
6,3,Lucia Fernandes,lucia.fernandes@student.edutrack.com,4,Digital Marketing 101,Marketing,2024-07-01,3,false,29.99,Lucia Prades
7,4,Marco Rossi,marco.rossi@student.edutrack.com,5,Advanced Python,Programming,2024-02-14,95,true,69.99,Carlos Vega
8,4,Marco Rossi,marco.rossi@student.edutrack.com,1,Intro to Python,Programming,2024-08-09,88,true,49.99,Marta López
9,5,Yuki Nakamura,yuki.nakamura@student.edutrack.com,3,Data Analysis with SQL,Data,2024-09-03,45,false,59.99,Marta López
12,7,Priya Sharma,priya.sharma@student.edutrack.com,4,Digital Marketing 101,Marketing,2024-12-01,70,true,29.99,Lucia Prades
15,7,Priya Sharma,priya.sharma@student.edutrack.com,1,Intro to Python,Programming,2025-01-10,55,false,49.99,Marta López
16,6,Pierre Dubois,pierre.dubois@student.edutrack.com,3,Data Analysis with SQL,Data,2025-02-20,20,false,59.99,Marta López
17,1,Emily Watson,emily.watson@student.edutrack.com,5,Advanced Python,Programming,2025-03-05,40,false,69.99,Carlos Vega
18,3,Lucia Fernandes,lucia.fernandes@student.edutrack.com,5,Advanced Python,Programming,2025-04-01,0,false,69.99,Carlos Vega
10,5,Yuki Nakamura,yuki.nakamura@student.edutrack.com,6,UI/UX Fundamentals,Design,2024-10-11,0,false,44.99,Pending assignment
11,6,Pierre Dubois,pierre.dubois@student.edutrack.com,6,UI/UX Fundamentals,Design,2024-11-05,0,false,44.99,Pending assignment

-------------------------------------

## Q9 Deleting test.com emails

My query: SELECT category, COUNT(*) AS row_count FROM enrollments GROUP BY category;

Result (copied as CSV):
category,row_count

Marketing,2
Programming,7
Design,4
Data,3

-----------------------------------

## Q10 Computing averages

My query: SELECT course_title, AVG(completion_percentage) AS average_completion FROM enrollments GROUP BY course_title;

Result (copied as CSV):

course_title,average_completion
Data Analysis with SQL,47.6666666666666667
Web Design Basics,32.5000000000000000
Digital Marketing 101,36.5000000000000000
Advanced Python,45.0000000000000000
UI/UX Fundamentals,0.00000000000000000000
Intro to Python,80.0000000000000000

---------------------------------------

## Q11 Courses with more than 3 enrollments

My query: SELECT course_title, COUNT(id) AS total_enrollments FROM enrollments GROUP BY course_title HAVING COUNT(id) > 3;

Result (copied as CSV):
course_title,total_enrollments

Intro to Python,4

---------------------------------------

## Q12 Total Revenue

My query: SELECT category, SUM(monthly_fee_paid) AS total_revenue FROM enrollments GROUP BY category ORDER BY total_revenue DESC;

Result (copied as CSV):
category,total_revenue

Programming,409.93
Data,179.97
Design,169.96
Marketing,59.98
