-- Data Warehouse Analysis Project

-- Sample Analysis Queries on Basketball Attendance Data

-- Total attendance
SELECT SUM(attendance) AS total_attendance
FROM attendance_fact;

-- Average attendance by timezone
SELECT game_timezone, AVG(attendance) AS avg_attendance
FROM attendance_fact
GROUP BY game_timezone
ORDER BY avg_attendance DESC;

-- Attendance by date
SELECT date_id, SUM(attendance) AS daily_attendance
FROM attendance_fact
GROUP BY date_id
ORDER BY daily_attendance DESC;

-- College enrollment vs attendance
SELECT 
  college_total_enrollment,
  AVG(attendance) AS avg_attendance
FROM attendance_fact
GROUP BY college_total_enrollment
ORDER BY avg_attendance DESC;

-- Top games by attendance
SELECT game_id, attendance
FROM attendance_fact
ORDER BY attendance DESC
LIMIT 10;
