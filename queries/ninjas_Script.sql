SELECT * FROM esquema_dojos_y_ninjas.ninjas;

-- Consulta: crea 3 ninjas que pertenezcan al primer dojo
-- INSERT INTO `esquema_dojos_y_ninjas`.`ninjas`(`id`,`first_name`,`last_name`,`age`,`dojo_id`,`created_at`,`updated_at`)VALUES(<{id: }>,<{first_name: }>,<{last_name: }>,<{age: }>,<{dojo_id: }>,<{created_at: }>,<{updated_at: }>);
INSERT INTO `esquema_dojos_y_ninjas`.`ninjas`(`id`,`first_name`,`last_name`,`age`,`dojo_id`,`created_at`,`updated_at`)VALUES(1, "Juan", "Arevalo", 49, 1, NOW(), NOW()), (2, "Aisha", "Arevalo", 12, 1, NOW(), NOW()), (3, "Sandra", "Morales", 50, 1, NOW(), NOW());

-- Consulta: crea 3 ninjas que pertenezcan al segundo dojo
INSERT INTO `esquema_dojos_y_ninjas`.`ninjas`(`id`,`first_name`,`last_name`,`age`,`dojo_id`,`created_at`,`updated_at`)VALUES(4, "Federico", "Vertiz", 55, 2, NOW(), NOW()), (5, "Fermin", "Ruiz", 15, 2, NOW(), NOW()), (6, "Alejandro", "Vertiz", 53, 2, NOW(), NOW());

-- Consulta: crea 3 ninjas que pertenezcan al tercer dojo
INSERT INTO `esquema_dojos_y_ninjas`.`ninjas`(`id`,`first_name`,`last_name`,`age`,`dojo_id`,`created_at`,`updated_at`)VALUES(7, "Vicente", "Pascarella", 64, 3, NOW(), NOW()), (8, "Sebastian", "Gomez", 45, 3, NOW(), NOW()), (9, "Amir", "Ceric", 45, 3, NOW(), NOW());


