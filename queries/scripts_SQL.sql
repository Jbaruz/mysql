SELECT * FROM users; -- Consulta todos los datos de la tabla usuarios
SELECT * FROM follows; -- Consulta todos los datos de la tabla follows
SELECT * FROM faves;
SELECT * FROM tweets;

-- ¿Qué consulta ejecutarías para obtener solo los nombres de todos los usuarios?
SELECT id, first_name FROM users; -- Separando por comas, especifica las columnas del select
-- ¿Qué consulta ejecutarías para obtener solo los nombres y apellidos de todos los usuarios?
SELECT id, first_name, last_name FROM users;

-- ¿Qué consulta ejecutarías para obtener solo las nombres de los usuarios con id de 2?
SELECT first_name FROM users WHERE id = 2; -- WHERE es para filtrar (esto es condicional)

-- ¿Qué consulta ejecutarías para obtener solo los apellidos de los usuarios con id de 2 y 3?
SELECT id, last_name FROM users WHERE id = 2 OR id = 3;
SELECT id, last_name FROM users WHERE id IN (2,3);
-- ¿Qué consulta ejecutarías para obtener todos los usuarios con id mayor que 2?
SELECT * FROM users WHERE id > 2;

-- ¿Qué consulta ejecutarías para obtener todos los usuarios con nombres que comiencen en A?
SELECT * FROM users WHERE first_name like 'A%';

-- ¿Qué consulta ejecutarías para obtener todos los usuarios con nombres que no comiencen en K?
SELECT * FROM users WHERE fist_name NOT LIKE "K%";

-- Ordenados de menor a mayor por created_at (ascendente)
SELECT * FROM users ORDER BY created_at;

-- Ordenados de mayor a menor por created_at (descendente)
SELECT * FROM users ORDER BY created_at DESC;

-- ¿Qué consulta ejecutarías para obtener todos los usuarios cuyo nombre termine en "e", con los usuarios más jóvenes en la parte superior de la tabla?
SELECT 
    *
FROM
    users
WHERE
    firs_name LIKE '%e'
ORDER BY birthday DESC;

-- ¿Qué consulta ejecutarías para obtener solo LOS nombres de 3 de los usuarios en orden alfabético?
SELECT 
    *
FROM
    users
ORDER BY first_name
LIMIT 3;

-- Seleccionar los nombre en mayusculas de los usuarios
SELECT 
    id, UPPER(first_name)
FROM
    users;
    
-- Seleccionar el nombre y el apellido de todos los usuarios, concadenado
SELECT 
    id,
    first_name,
    last_name,
    CONCAT(first_name, ' ', last_name) AS nombre_completo
FROM
    users;

SELECT 
    id AS identificador,
    first_name AS nombre,
    last_name AS apellido,
    CONCAT(first_name, ' ', last_name) AS nombre_completo,
    'HOLA' AS saludo,
    10 AS numero_fijo
FROM
    users;

SELECT tweets.tweet, users.* FROM users LEFT JOIN tweets ON users.id = tweets.user_id WHERE users.id = 1;

DELETE FROM users WHERE users.first_name = 'AAA'; -- Agregar simpre WHERE para condicionar y no borrar todo
