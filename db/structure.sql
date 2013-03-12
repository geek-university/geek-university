CREATE TABLE "active_admin_comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "resource_id" varchar(255) NOT NULL, "resource_type" varchar(255) NOT NULL, "author_id" integer, "author_type" varchar(255), "body" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "namespace" varchar(255));
CREATE TABLE "admin_users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "course_students" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "course_id" integer, "student_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "course_teachers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "course_id" integer, "teacher_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "courses" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "short_summary" varchar(255), "description" text, "organisation" varchar(255), "logo_file_name" varchar(255), "logo_content_type" varchar(255), "logo_file_size" integer, "logo_updated_at" datetime, "start_date" date, "end_date" date, "published" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "documents" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "body" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "feedbacks" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "body" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "lectures" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "youtube_link" varchar(255), "content_id" integer, "content_type" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "materials" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "position" float, "content_type" varchar(255), "content_id" integer, "section_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "sections" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "date" date, "course_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "username" varchar(255), "type" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255));
CREATE INDEX "index_active_admin_comments_on_author_type_and_author_id" ON "active_admin_comments" ("author_type", "author_id");
CREATE INDEX "index_active_admin_comments_on_namespace" ON "active_admin_comments" ("namespace");
CREATE INDEX "index_admin_notes_on_resource_type_and_resource_id" ON "active_admin_comments" ("resource_type", "resource_id");
CREATE UNIQUE INDEX "index_admin_users_on_email" ON "admin_users" ("email");
CREATE UNIQUE INDEX "index_admin_users_on_reset_password_token" ON "admin_users" ("reset_password_token");
CREATE INDEX "index_course_students_on_course_id" ON "course_students" ("course_id");
CREATE INDEX "index_course_students_on_student_id" ON "course_students" ("student_id");
CREATE INDEX "index_course_teachers_on_course_id" ON "course_teachers" ("course_id");
CREATE INDEX "index_course_teachers_on_teacher_id" ON "course_teachers" ("teacher_id");
CREATE INDEX "index_materials_on_section_id" ON "materials" ("section_id");
CREATE INDEX "index_sections_on_course_id" ON "sections" ("course_id");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20130308122634');

INSERT INTO schema_migrations (version) VALUES ('20130308122636');

INSERT INTO schema_migrations (version) VALUES ('20130308122637');

INSERT INTO schema_migrations (version) VALUES ('20130309214102');

INSERT INTO schema_migrations (version) VALUES ('20130309214109');

INSERT INTO schema_migrations (version) VALUES ('20130309222227');

INSERT INTO schema_migrations (version) VALUES ('20130309235619');

INSERT INTO schema_migrations (version) VALUES ('20130309235823');

INSERT INTO schema_migrations (version) VALUES ('20130310000147');

INSERT INTO schema_migrations (version) VALUES ('20130310222250');

INSERT INTO schema_migrations (version) VALUES ('20130310225248');

INSERT INTO schema_migrations (version) VALUES ('20130312004206');

INSERT INTO schema_migrations (version) VALUES ('20130312005014');