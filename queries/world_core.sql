SELECT * FROM world.countries;

-- 1. ¿Qué consulta ejecutarías para obtener todos los países que hablan esloveno? Tu consulta debe devolver 
-- el nombre del país, el idioma y el porcentaje de habla del idioma. Tu consulta debe ordenar el resultado 
-- por porcentaje de habla del idioma en orden descendente. (1)

SELECT c.name, l.language, l.percentage FROM world.countries c JOIN world.languages l ON c.id = l.country_id WHERE l.language = "Slovene" ORDER BY l.percentage DESC;

-- 2. ¿Qué consulta ejecutarías para mostrar el número total de ciudades de cada país?  Tu consulta debe 
-- devolver el nombre del país, el idioma y el número total de ciudades. Tu consulta debe ordenar el resultado
--  por el número de ciudades en orden descendente. (3)

SELECT c.name, COUNT(ct.name) cities FROM world.countries c JOIN world.cities ct ON c.id = ct.country_id GROUP BY c.name ORDER BY cities DESC;

-- 3. ¿Qué consulta ejecutarías para obtener todos ciudades de México con una población mayor a 500,000? 
-- Tu consulta debe ordenar el resultado por población en orden descendente. (1)
SELECT ct.name, ct.population, ct.country_id FROM world.countries c JOIN world.cities ct ON c.id = ct.country_id WHERE c.name = "Mexico" and ct.population > 500000 ORDER BY ct.population DESC;

-- 4. ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje de habla mayor a 89%?
--  Tu consulta debe ordenar el resultado por porcentaje de habla en orden descendente. (1)
SELECT c.name, l.language, l.percentage FROM world.countries c JOIN world.languages l ON c.id = l.country_id WHERE l.percentage > 89 ORDER BY l.percentage DESC;

-- 5. ¿Qué consulta ejecutarías para obtener todos los países con un área de superficie menor a 501 y 
-- población mayor a 100,000? (2)
SELECT c.name, c.surface_area, c.population FROM world.countries c JOIN world.cities ct ON c.id = ct.country_id WHERE c.surface_area < 501 AND c.population > 100000;

-- 6. ¿Qué consulta ejecutarías para obtener países solo con monarquía constitucional, un capital superior a 200
-- y una esperanza de vida mayor a 75 años?  (1)
SELECT c.name, c.government_form, c.capital, c.life_expectancy  FROM world.countries c WHERE c.government_form = "Constitutional Monarchy" AND c.capital > 200 AND c.life_expectancy > 75;

-- 7. ¿Qué consulta ejecutarías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires
-- con una población mayor a 500,000 habitantes? La consulta debe devolver el nombre del país, el nombre de a ciudad,
-- el distrito y la población. (2)
SELECT c.name, ct.name, ct.district, ct.population FROM world.countries c JOIN world.cities ct ON c.id = ct.country_id WHERE c.name = "Argentina" AND ct.population > 500000 AND ct.district = "Buenos Aires" ORDER BY ct.population DESC;

-- 8. ¿Qué consulta ejecutarías para resumir el número de países en cada región? Tu consulta debe mostrar el nombre
-- de la región y el número de países. Además, debe ordenar el resultado por el número de países en orden descendente. (2)
SELECT c.region, COUNT(c.name) as countries FROM world.countries c GROUP BY c.region ORDER BY countries DESC;

