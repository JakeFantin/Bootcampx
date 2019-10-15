SELECT cohorts.name, AVG((completed_at-started_at)) as average_assitance_time
FROM assistance_requests x
JOIN students ON student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assitance_time DESC
LIMIT 1;