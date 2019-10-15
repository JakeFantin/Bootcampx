SELECT cohorts.name, AVG((completed_at-started_at)) as average_assitance_time
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name;