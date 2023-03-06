INSERT INTO roles (name) VALUES ('student'), ('teacher'), ('admin');
INSERT INTO level (name) VALUES ('principiante'), ('medio'), ('avanzado');
INSERT INTO category (name) VALUES ('deporte'), ('marketing'), ('tecnology'), ('diselo ux');
INSERT INTO users (name, email, password, age, roleid) VALUES ('diana', 'diana@gmail.com', '12345',25,1), ('ian', 'ian@gmail.com', '456123', 32, 2), ('erik', 'erik@gmail.com', 'ecosistema24', 28, 3);
INSERT INTO courses (title, description, "levelId", "rolesId", "categoryId") VALUES ('REACT BASIC', 'Las bases de react, primeras funciones', 1, 1,3);
INSERT INTO "courseVideos" (title, url, "categoryId") VALUES ('react DOM', 'https//:reactDom.com', 4);
INSERT INTO "courseVideos" (title, url, "categoryId") VALUES ('Javascript', 'https//:js.com',4);
INSERT INTO courses (title, description, "levelId", "rolesId", "categoryId") VALUES ('uso de react Native', 'Las bases de react native, primeras funciones,...', 1, 1, 3), ('uso de react Native', 'Las bases de react native, primeras funciones,...', 1, 2, 3);



SELECT * FROM users JOIN roles ON users.roleid = roles.id;
SELECT * FROM "courseVideos" JOIN category ON "courseVideos"."categoryId" = category.id;
SELECT * FROM roles JOIN courses ON roles.id = courses."rolesId";
SELECT * FROM courses JOIN level ON courses."rolesId" = level.id;

