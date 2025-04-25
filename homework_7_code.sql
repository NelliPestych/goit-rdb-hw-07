-- Завдання 1: Витяг року, місяця і дня з дати
SELECT 
  id, 
  date, 
  YEAR(date) AS year, 
  MONTH(date) AS month, 
  DAY(date) AS day
FROM orders;

-- Завдання 2: Додати 1 день до дати
SELECT 
  id, 
  date, 
  DATE_ADD(date, INTERVAL 1 DAY) AS date_plus_one_day
FROM orders;

-- Завдання 3: Timestamp (секунди з початку епохи)
SELECT 
  id, 
  date, 
  UNIX_TIMESTAMP(date) AS timestamp_seconds
FROM orders;

-- Завдання 4: Кількість рядків у заданому діапазоні дат
SELECT 
  COUNT(*) AS total_orders_in_range
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- Завдання 5: Вивід JSON-об’єкта з id та date
SELECT 
  id, 
  date, 
  JSON_OBJECT('id', id, 'date', date) AS order_json
FROM orders;