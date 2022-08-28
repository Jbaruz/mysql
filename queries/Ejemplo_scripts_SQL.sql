-- Llenado de PAISES
SELECT * FROM Ejemplo.paises;

INSERT INTO Ejemplo.paises (id, nombre, created_at, updated_at) VALUES (56, 'Chile', NOW(), NOW());

INSERT INTO Ejemplo.paises (id, nombre, created_at, updated_at) VALUES (150, 'Honduras', NOW(), NOW());
INSERT INTO Ejemplo.paises (id, nombre, created_at, updated_at) VALUES (57, 'Colombia', NOW(), NOW());
INSERT INTO Ejemplo.paises (id, nombre, created_at, updated_at) VALUES (86, 'China', NOW(), NOW());
INSERT INTO Ejemplo.paises (id, nombre, created_at, updated_at) VALUES (34, 'Espana', NOW(), NOW());

-- Llenado de CIUDADES
SELECT * FROM Ejemplo.ciudades;
-- Linea abajo referencial viene de: ciudades/copy to clipboard/Insert Statement
-- INSERT INTO Ejemplo.ciudades(id,`nombre`,`created_at`,`updated_at`,`pais_id`) VALUES (<{id: }>,<{nombre: }>,<{created_at: }>,<{updated_at: }>,<{pais_id: }>);

INSERT INTO Ejemplo.ciudades(id,`nombre`,`created_at`,`updated_at`,`pais_id`) VALUES (500,"Temuco",NOW(),NOW(),56);
INSERT INTO Ejemplo.ciudades(id,`nombre`,`created_at`,`updated_at`,`pais_id`) VALUES (501,"Santiago",NOW(),NOW(),56);
INSERT INTO Ejemplo.ciudades(id,`nombre`,`created_at`,`updated_at`,`pais_id`) VALUES (502,"Tegucipalpa",NOW(),NOW(),150);
INSERT INTO Ejemplo.ciudades(id,`nombre`,`created_at`,`updated_at`,`pais_id`) VALUES (503,"Madrid",NOW(),NOW(),57);
INSERT INTO Ejemplo.ciudades(id,`nombre`,`created_at`,`updated_at`,`pais_id`) VALUES (504,"Madrid",NOW(),NOW(),34);

-- Mostrar paises y ciudades unidas (todo)
SELECT * FROM Ejemplo.paises p JOIN Ejemplo.ciudades c ON p.id = c.pais_id;
-- Mostrar solo paises
SELECT p.* FROM Ejemplo.paises p JOIN Ejemplo.ciudades c ON p.id = c.pais_id;

-- llenado de TIPODIRECCIONES

-- INSERT INTO `tiposdirecciones`(`id`,`nombre`,`created_at`,`updated_at`) VALUES (<{id: }>,<{nombre: }>,<{created_at: }>,<{updated_at: }>);
SELECT * FROM Ejemplo.tiposdirecciones;

INSERT INTO Ejemplo.tiposdirecciones (`id`,`nombre`,`created_at`,`updated_at`) VALUES (400,"Pasaje",NOW(),NOW());
INSERT INTO Ejemplo.tiposdirecciones (`id`,`nombre`,`created_at`,`updated_at`) VALUES (401,"Calle",NOW(),NOW());
INSERT INTO Ejemplo.tiposdirecciones (`id`,`nombre`,`created_at`,`updated_at`) VALUES (402,"Avenida",NOW(),NOW());

-- Llenado de DIRECCIONES
-- direcciones/copy to clipboard/Select all statement

SELECT *
FROM `Ejemplo`.`direcciones`;

-- direcciones/copy to clipboard/Insert statement

-- INSERT INTO Ejemplo.direcciones(`id`,`tipodireccion_id`,`nombre`,`numero`,`ciudad_id`,`created_at`,`updated_at`) VALUES(<{id: }>,<{nombre: }>,<{numero: }>,<{created_at: }>,<{updated_at: }>,<{ciudad_id: }>,<{tipodireccion_id: }>);

INSERT INTO Ejemplo.direcciones(`id`,`tipodireccion_id`,`nombre`,`numero`,`ciudad_id`,`created_at`,`updated_at`) VALUES (50, 400, "Seis", 140, 500, NOW(), NOW());
INSERT INTO Ejemplo.direcciones(`id`,`tipodireccion_id`,`nombre`,`numero`,`ciudad_id`,`created_at`,`updated_at`) VALUES (51, 401, "Uno", 389, 502, NOW(), NOW());
INSERT INTO Ejemplo.direcciones(`id`,`tipodireccion_id`,`nombre`,`numero`,`ciudad_id`,`created_at`,`updated_at`) VALUES (52, 400, "Distinto", 55, 500, NOW(), NOW());
INSERT INTO Ejemplo.direcciones(`id`,`tipodireccion_id`,`nombre`,`numero`,`ciudad_id`,`created_at`,`updated_at`) VALUES (53, 400, "Nadie", 67, 501, NOW(), NOW());

-- Llenado de Alumnos
-- INSERT INTO `Ejemplo`.`alumnos`(`id`,`nombre`,`apellido`,`edad`,`direccion_id`,`created_at`,`updated_at`) VALUES (<{id: 0}>,<{nombre: }>,<{apellido: }>,<{edad: 18}>,<{direccion_id: }>,<{created_at: }>,<{updated_at: }>);
SELECT * FROM Ejemplo.Alumnos;

INSERT INTO `Ejemplo`.`alumnos`(`id`,`nombre`,`apellido`,`edad`,`direccion_id`,`created_at`,`updated_at`) VALUES (1,"Francisco", "Boisier", 37, 50, NOW(), NOW());
INSERT INTO `Ejemplo`.`alumnos`(`id`,`nombre`,`apellido`,`edad`,`direccion_id`,`created_at`,`updated_at`) VALUES (2,"Javier", "Sandoval", 40, 51, NOW(), NOW());
INSERT INTO `Ejemplo`.`alumnos`(`id`,`nombre`,`apellido`,`edad`,`direccion_id`,`created_at`,`updated_at`) VALUES (3,"Pancho", "Lala", 30, 52, NOW(), NOW());
INSERT INTO `Ejemplo`.`alumnos`(`id`,`nombre`,`apellido`,`edad`,`direccion_id`,`created_at`,`updated_at`) VALUES (4,"Lele", "Dos", 30, 53, NOW(), NOW());

-- Unir todo para ver la tabla completa hasta linea 63
SELECT * FROM Ejemplo.alumnos a JOIN Ejemplo.direcciones d ON a.direccion_id = d.id
JOIN Ejemplo.ciudades c ON d.ciudad_id = c.id
JOIN Ejemplo.paises p ON c.pais_id = p.id
WHERE a.nombre = 'Francisco'; -- Solo aparece dato de Francisco

-- Se observa de donde es Francisco
SELECT a.nombre as alumno,p.nombre as pais FROM Ejemplo.alumnos a JOIN Ejemplo.direcciones d ON a.direccion_id = d.id
JOIN Ejemplo.ciudades c ON d.ciudad_id = c.id
JOIN Ejemplo.paises p ON c.pais_id = p.id
WHERE a.nombre = 'Francisco';

-- Para saber la cantidad de Alumnos por pais (COUNT funciona con GROUP BY)
SELECT p.nombre as pais,COUNT(*) as cantidad_alumnos FROM Ejemplo.alumnos a JOIN Ejemplo.direcciones d ON a.direccion_id = d.id
JOIN Ejemplo.ciudades c ON d.ciudad_id = c.id
JOIN Ejemplo.paises p ON c.pais_id = p.id
GROUP BY p.nombre;

-- Muestra cantidad de paises incluido los que no tienen alumnos
SELECT p.nombre as pais,COUNT(a.nombre) as cantidad_alumnos FROM Ejemplo.alumnos a JOIN Ejemplo.direcciones d ON a.direccion_id = d.id
JOIN Ejemplo.ciudades c ON d.ciudad_id = c.id
RIGHT JOIN Ejemplo.paises p ON c.pais_id = p.id
GROUP BY p.nombre;



