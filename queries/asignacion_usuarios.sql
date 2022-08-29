
-- Consulta: crea 3 usuarios nuevos
-- INSERT INTO `users_schema`.`users`(`id`,`identificacion`,`nombre`,`apellido`,`correo_electronico`,`created_at`,`updated_at`)VALUES(<{id: }>,<{identificacion: }>,<{nombre: }>,<{apellido: }>,<{correo_electronico: }>,<{created_at: }>,<{updated_at: }>);
INSERT INTO `users_schema`.`users`(`id`,`identificacion`,`nombre`,`apellido`,`correo_electronico`,`created_at`,`updated_at`)VALUES(1, 18153821, "Juan", "Arevalo", "juan@gmail.com", NOW(), NOW());
INSERT INTO `users_schema`.`users`(`id`,`identificacion`,`nombre`,`apellido`,`correo_electronico`,`created_at`,`updated_at`)VALUES(2, 18153822, "Sandra", "Morales", "sandra@gmail.com", NOW(), NOW());
INSERT INTO `users_schema`.`users`(`id`,`identificacion`,`nombre`,`apellido`,`correo_electronico`,`created_at`,`updated_at`)VALUES(3, 18153823, "Aisha", "Arevalo", "aisha@gmail.com", NOW(), NOW());

-- Consulta: recupera todos los usuarios
SELECT * FROM users_schema.users;

-- Consulta: recupera el primer usuario que usa su dirección de correo electrónico
SELECT id, correo_electronico FROM users_schema.users WHERE id = 1;

-- Consulta: recupera el último usuario que usa su id
SELECT id, identificacion FROM users_schema.users WHERE id = 3;

-- Consulta: cambia el usuario con id=3 para que su apellido sea Panqueques
UPDATE users_schema.users SET apellido = 'panqueque' WHERE id = 3; 

-- Consulta: elimina el usuario con id=2 de la base de datos
DELETE FROM users_schema.users WHERE users_schema.users.id = 2;

-- Consulta: obtén todos los usuarios, ordenados por su nombre
SELECT * FROM users_schema.users ORDER BY nombre;

-- Consulta BONUS: obtén todos los usuarios, ordenados por su nombre en orden descendente
SELECT * FROM users_schema.users ORDER BY nombre DESC;
