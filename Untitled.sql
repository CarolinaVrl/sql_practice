CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "name" varchar(30),
  "email" varchar(60) UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int,
  "roleid" int NOT NULL
);

CREATE TABLE "roles" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "name" varchar(20) NOT NULL
);

CREATE TABLE "category" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "name" varchar(30) NOT NULL
);

CREATE TABLE "level" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "name" varchar(20) NOT NULL
);

CREATE TABLE "courses" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "title" varchar(50) NOT NULL,
  "description" text NOT NULL,
  "levelId" int NOT NULL,
  "rolesId" int NOT NULL,
  "categoryId" int NOT NULL
);

CREATE TABLE "courseVideos" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "title" varchar(50) NOT NULL,
  "url" varchar(100) UNIQUE NOT NULL,
  "categoryId" int NOT NULL
);

CREATE TABLE "usersHasroles" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "roleId" int NOT NULL,
  "usersId" int NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("categoryId") REFERENCES "category" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("levelId") REFERENCES "level" ("id");

ALTER TABLE "courseVideos" ADD FOREIGN KEY ("categoryId") REFERENCES "category" ("id");

ALTER TABLE "usersHasroles" ADD FOREIGN KEY ("roleId") REFERENCES "roles" ("id");

ALTER TABLE "usersHasroles" ADD FOREIGN KEY ("usersId") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("rolesId") REFERENCES "roles" ("id");
