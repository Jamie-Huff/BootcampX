SELECT 
  teachers.name as teacher, 
  students.name as student, 
  assignments.name as assignment, 
  SUM(completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
GROUP BY (teachers.name, students.name, assignments.name, duration)
-- Why do I need this group by clause for this to work?
ORDER BY duration;