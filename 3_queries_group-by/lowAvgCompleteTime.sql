SELECT students.name as student,
 AVG(assignment_submissions.duration) as average_assignment_duration,
 AVG(assignments.duration) as average_estimated_duration
FROM students

JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date is NULL
GROUP BY student
-- I was missing this
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration DESC;