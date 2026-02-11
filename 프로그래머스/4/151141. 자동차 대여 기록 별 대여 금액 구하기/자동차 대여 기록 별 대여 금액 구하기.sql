WITH base AS (
    SELECT c.CAR_ID, c.DAILY_FEE
    FROM CAR_RENTAL_COMPANY_CAR c
    WHERE c.CAR_TYPE = '트럭'
),
history AS (
    SELECT h.HISTORY_ID,
           b.DAILY_FEE,
           DATEDIFF(h.END_DATE, h.START_DATE) + 1 AS days
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY h
    JOIN base b ON h.CAR_ID = b.CAR_ID
),
discount AS (
    SELECT CAR_TYPE,
           CASE
               WHEN DURATION_TYPE LIKE '90%' THEN 90
               WHEN DURATION_TYPE LIKE '30%' THEN 30
               WHEN DURATION_TYPE LIKE '7%'  THEN 7
           END AS min_days,
           DISCOUNT_RATE
    FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
    WHERE CAR_TYPE = '트럭'
)

SELECT h.HISTORY_ID,
       FLOOR(
           h.DAILY_FEE * h.days *
           (1 - IFNULL(d.DISCOUNT_RATE, 0) / 100)
       ) AS FEE
FROM history h
LEFT JOIN discount d
  ON h.days >= d.min_days
GROUP BY h.HISTORY_ID
ORDER BY FEE DESC, HISTORY_ID DESC;
