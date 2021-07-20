SELECT cohorts.name as cohort_name,
  count(students.*) as student_count 
  FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER BY student_count;








-- 2 different columns
-- cohorts_name which reprents cohorts.name
-- student_count which represents 
  -- count all students where that specific students cohort_id
  -- is the same as the current cohort_id that we are working with
