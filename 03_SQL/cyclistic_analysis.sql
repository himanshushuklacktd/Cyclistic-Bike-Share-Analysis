-- ============================================================
-- Cyclistic Bike-Share Analysis
-- Period: April 2020 - March 2021
-- Tool: Google BigQuery
-- ============================================================


-- 1. Total rides by user type
SELECT
  member_casual,
  COUNT(*) AS total_rides
FROM `sql-498403.cyclistic.cyclistic_2020_2021`
GROUP BY member_casual
ORDER BY total_rides DESC;


-- 2. Average ride length by user type
SELECT
  member_casual,
  AVG(
    CASE
      WHEN STRPOS(ride_length, ':') > 0 THEN
        CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(0)] AS FLOAT64) * 60
        + CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(1)] AS FLOAT64)
        + CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(2)] AS FLOAT64) / 60
      ELSE
        CAST(ride_length AS FLOAT64) * 1440
    END
  ) AS avg_ride_minutes
FROM `sql-498403.cyclistic.cyclistic_2020_2021`
GROUP BY member_casual
ORDER BY avg_ride_minutes DESC;


-- 3. Rides by day of week
SELECT
  CASE
    WHEN day_of_week = 1 THEN 'Sunday'
    WHEN day_of_week = 2 THEN 'Monday'
    WHEN day_of_week = 3 THEN 'Tuesday'
    WHEN day_of_week = 4 THEN 'Wednesday'
    WHEN day_of_week = 5 THEN 'Thursday'
    WHEN day_of_week = 6 THEN 'Friday'
    WHEN day_of_week = 7 THEN 'Saturday'
  END AS day_name,
  member_casual,
  COUNT(*) AS total_rides
FROM `sql-498403.cyclistic.cyclistic_2020_2021`
WHERE day_of_week BETWEEN 1 AND 7
GROUP BY day_name, member_casual, day_of_week
ORDER BY day_of_week, member_casual;


-- 4. Monthly rides by user type
SELECT
  FORMAT_TIMESTAMP('%B', started_at) AS month_name,
  EXTRACT(MONTH FROM started_at) AS month_number,
  member_casual,
  COUNT(*) AS total_rides
FROM `sql-498403.cyclistic.cyclistic_2020_2021`
GROUP BY month_name, month_number, member_casual
ORDER BY month_number, member_casual;


-- 5. Monthly average ride length
SELECT
  FORMAT_TIMESTAMP('%B', started_at) AS month_name,
  EXTRACT(MONTH FROM started_at) AS month_number,
  member_casual,
  AVG(
    CASE
      WHEN STRPOS(ride_length, ':') > 0 THEN
        CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(0)] AS FLOAT64) * 60
        + CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(1)] AS FLOAT64)
        + CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(2)] AS FLOAT64) / 60
      ELSE
        CAST(ride_length AS FLOAT64) * 1440
    END
  ) AS avg_ride_minutes
FROM `sql-498403.cyclistic.cyclistic_2020_2021`
WHERE ride_length IS NOT NULL
GROUP BY month_name, month_number, member_casual
ORDER BY month_number, member_casual;


-- 6. Bike type usage by user type
SELECT
  rideable_type,
  member_casual,
  COUNT(*) AS total_rides
FROM `sql-498403.cyclistic.cyclistic_2020_2021`
GROUP BY rideable_type, member_casual
ORDER BY rideable_type, member_casual;


-- 7. Average ride duration by bike type and user type
SELECT
  rideable_type,
  member_casual,
  AVG(
    CASE
      WHEN STRPOS(ride_length, ':') > 0 THEN
        CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(0)] AS FLOAT64) * 60
        + CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(1)] AS FLOAT64)
        + CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(2)] AS FLOAT64) / 60
      ELSE
        CAST(ride_length AS FLOAT64) * 1440
    END
  ) AS avg_ride_minutes
FROM `sql-498403.cyclistic.cyclistic_2020_2021`
WHERE ride_length IS NOT NULL
GROUP BY rideable_type, member_casual
ORDER BY rideable_type, member_casual;