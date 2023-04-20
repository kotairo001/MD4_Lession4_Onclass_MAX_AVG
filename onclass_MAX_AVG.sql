select address, count(studentID) as "Student number" from student group by address;
select * from student;
select student.studentName, avg(mark) as "Average Mark" from student
join mark on student.studentID = mark.studentID
group by student.studentName;
select student.studentName, avg(mark) as "Average Mark" from student
join mark on student.studentID = mark.studentID 
group by student.studentName
having avg(mark)<15;

select student.studentName, avg(mark) as "Average Mark" from student
join mark on student.studentID = mark.studentID 
group by student.studentName
having avg(mark)>=all(select avg(mark) from mark group by mark.studentID); 

select subject.subName, max(subject.credit) as credit from subject;

select subject.subName, max(mark.mark) as max from mark 
join subject on mark.subID = subject.subID 
group by subject.subName;

select student.studentName, avg(mark.mark) as average from mark
join student on student.studentID = mark.studentID
group by student.studentName;