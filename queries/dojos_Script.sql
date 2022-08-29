SELECT * FROM esquema_dojos_y_ninjas.dojos;

-- Consulta: Crea 3 dojos nuevos
-- INSERT INTO `esquema_dojos_y_ninjas`.`dojos`(`id`,`name`,`created_at`,`updated_at`)VALUES(<{id: }>,<{name: }>,<{created_at: }>,<{updated_at: }>);
INSERT INTO `esquema_dojos_y_ninjas`.`dojos`(`id`,`name`,`created_at`,`updated_at` )VALUES(1, "Cobra Kai", NOW(),NOW()),(2,"Miyagi Dojo",NOW(),NOW()),(3,"Coding Dojo",NOW(),NOW());

-- Consulta: elimina los 3 dojos que acabas de crear
DELETE FROM esquema_dojos_y_ninjas.dojos WHERE esquema_dojos_y_ninjas.dojos.id = 1;
DELETE FROM esquema_dojos_y_ninjas.dojos WHERE esquema_dojos_y_ninjas.dojos.id = 2;
DELETE FROM esquema_dojos_y_ninjas.dojos WHERE esquema_dojos_y_ninjas.dojos.id = 3;
-- Consulta: crea 3 dojos nuevos
INSERT INTO `esquema_dojos_y_ninjas`.`dojos`(`id`,`name`,`created_at`,`updated_at` )VALUES(1, "Cobra Kai", NOW(),NOW()),(2,"Miyagi Dojo",NOW(),NOW()),(3,"Coding Dojo",NOW(),NOW());

-- Consulta: recupera todos los ninjas del primer dojo
SELECT d.id as primer_dojo, d.name, n.first_name, n.last_name FROM esquema_dojos_y_ninjas.dojos d JOIN esquema_dojos_y_ninjas.ninjas n ON d.id = n.dojo_id WHERE dojo_id = 1;

-- Consulta: recupera todos los ninjas del último dojo
SELECT d.id as tercer_dojo, d.name, n.first_name, n.last_name FROM esquema_dojos_y_ninjas.dojos d JOIN esquema_dojos_y_ninjas.ninjas n ON d.id = n.dojo_id WHERE dojo_id = 3;

-- -- Consulta: recupera el dojo del último ninja
SELECT d.id as dojo, d.name, n.first_name, n.last_name FROM esquema_dojos_y_ninjas.dojos d JOIN esquema_dojos_y_ninjas.ninjas n ON d.id = n.dojo_id WHERE n.id = 9;