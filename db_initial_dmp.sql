DROP TABLE IF EXISTS "articles_article";
CREATE TABLE "articles_article" (
    "id" integer NOT NULL PRIMARY KEY,
    "title" varchar(200) NOT NULL,
    "body" text NOT NULL,
    "pub_date" datetime NOT NULL,
    "likes" integer NOT NULL
);
INSERT INTO "articles_article" VALUES(1,'Title1','Published on Feb 10, 2013
this tutorial covers how to package you urls with you apps and include into your project as well as passing values in your urls through to your views and ending up in your template pages','',2);
INSERT INTO "articles_article" VALUES(2,'Title2 Wind','blah di blah in the WILLOWS','2014-07-04 18:22:36',1001);
INSERT INTO "articles_article" VALUES(3,'Title Again','Ibbi was here','2014-07-01 12:46:52.679730',0);
INSERT INTO "articles_article" VALUES(4,'Ibbi goes to Town','My db password for the admin interface is
andy / andy','2014-07-03 23:24:45',11);
INSERT INTO "articles_article" VALUES(5,'Wine Lovers','Tags
Tags look like this: {% tag %}. Tags are more complex than variables: Some create text in the output, some control flow by performing loops or logic, and some load external information into the template to be used by later variables.

Some tags require beginning and ending tags (i.e. {% tag %} ... tag contents ... {% endtag %}).

Django ships with about two dozen built-in template tags. You can read all about them in the built-in tag reference. To give you a taste of what’s available, here are some of the more commonly used tags:

for
Loop over each item in an array. For example, to display a list of athletes provided in athlete_list:

<ul>
{% for athlete in athlete_list %}
    <li>{{ athlete.name }}</li>
{% endfor %}
</ul>
if, elif, and else
Evaluates a variable, and if that variable is “true” the contents of the block are displayed:

{% if athlete_list %}
    Number of athletes: {{ athlete_list|length }}
{% elif athlete_in_locker_room_list %}
    Athletes should be out of the locker room soon!
{% else %}
    No athletes.
{% endif %}
In the above, if athlete_list is not empty, the number of athletes will be displayed by the {{ athlete_list|length }} variable. Otherwise, if athlete_in_locker_room_list is not empty, the message “Athletes should be out...” will be displayed. If both lists are empty, “No athletes.” will be displayed.

You can also use filters and various operators in the if tag:

{% if athlete_list|length > 1 %}
   Team: {% for athlete in athlete_list %} ... {% endfor %}
{% else %}
   Athlete: {{ athlete_list.0.name }}
{% endif %}
While the above example works, be aware that most template filters return strings, so mathematical comparisons using filters will generally not work as you expect. length is an exception.

block and extends
Set up template inheritance (see below), a powerful way of cutting down on “boilerplate” in templates.
Again, the above is only a selection of the whole list; see the built-in tag reference for the complete list.

You can also create your own custom template tags; see Custom template tags and filters.

See also
Django’s admin interface can include a complete reference of all template tags and filters available for a given site. See The Django admin documentation generator.','2014-07-03 23:25:29',1);
DROP TABLE IF EXISTS "articles_fred";
CREATE TABLE "articles_fred" (
    "id" integer NOT NULL PRIMARY KEY,
    "title" varchar(200) NOT NULL
);
INSERT INTO "articles_fred" VALUES(1,'Mercury');
INSERT INTO "articles_fred" VALUES(2,'Flinstone');
DROP TABLE IF EXISTS "auth_group";
CREATE TABLE "auth_group" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(80) NOT NULL UNIQUE
);
DROP TABLE IF EXISTS "auth_group_permissions";
CREATE TABLE "auth_group_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("group_id", "permission_id")
);
DROP TABLE IF EXISTS "auth_permission";
CREATE TABLE "auth_permission" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(50) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" varchar(100) NOT NULL,
    UNIQUE ("content_type_id", "codename")
);
INSERT INTO "auth_permission" VALUES(1,'Can add log entry',1,'add_logentry');
INSERT INTO "auth_permission" VALUES(2,'Can change log entry',1,'change_logentry');
INSERT INTO "auth_permission" VALUES(3,'Can delete log entry',1,'delete_logentry');
INSERT INTO "auth_permission" VALUES(4,'Can add permission',2,'add_permission');
INSERT INTO "auth_permission" VALUES(5,'Can change permission',2,'change_permission');
INSERT INTO "auth_permission" VALUES(6,'Can delete permission',2,'delete_permission');
INSERT INTO "auth_permission" VALUES(7,'Can add group',3,'add_group');
INSERT INTO "auth_permission" VALUES(8,'Can change group',3,'change_group');
INSERT INTO "auth_permission" VALUES(9,'Can delete group',3,'delete_group');
INSERT INTO "auth_permission" VALUES(10,'Can add user',4,'add_user');
INSERT INTO "auth_permission" VALUES(11,'Can change user',4,'change_user');
INSERT INTO "auth_permission" VALUES(12,'Can delete user',4,'delete_user');
INSERT INTO "auth_permission" VALUES(13,'Can add content type',5,'add_contenttype');
INSERT INTO "auth_permission" VALUES(14,'Can change content type',5,'change_contenttype');
INSERT INTO "auth_permission" VALUES(15,'Can delete content type',5,'delete_contenttype');
INSERT INTO "auth_permission" VALUES(16,'Can add session',6,'add_session');
INSERT INTO "auth_permission" VALUES(17,'Can change session',6,'change_session');
INSERT INTO "auth_permission" VALUES(18,'Can delete session',6,'delete_session');
INSERT INTO "auth_permission" VALUES(19,'Can add article',7,'add_article');
INSERT INTO "auth_permission" VALUES(20,'Can change article',7,'change_article');
INSERT INTO "auth_permission" VALUES(21,'Can delete article',7,'delete_article');
INSERT INTO "auth_permission" VALUES(22,'Can add article',8,'add_article');
INSERT INTO "auth_permission" VALUES(23,'Can change article',8,'change_article');
INSERT INTO "auth_permission" VALUES(24,'Can delete article',8,'delete_article');
INSERT INTO "auth_permission" VALUES(25,'Can add fred',9,'add_fred');
INSERT INTO "auth_permission" VALUES(26,'Can change fred',9,'change_fred');
INSERT INTO "auth_permission" VALUES(27,'Can delete fred',9,'delete_fred');
DROP TABLE IF EXISTS "auth_user";
CREATE TABLE "auth_user" (
    "id" integer NOT NULL PRIMARY KEY,
    "password" varchar(128) NOT NULL,
    "last_login" datetime NOT NULL,
    "is_superuser" bool NOT NULL,
    "username" varchar(30) NOT NULL UNIQUE,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(75) NOT NULL,
    "is_staff" bool NOT NULL,
    "is_active" bool NOT NULL,
    "date_joined" datetime NOT NULL
);
INSERT INTO "auth_user" VALUES(1,'pbkdf2_sha256$12000$uDQYJ30bW2AX$kZe283w6+NhKsCMi1/SudHngmw8Ts6zw6AO8T5qUHw8=','2014-08-05 02:27:54.301869',1,'andy','','','abulka@gmail.com',1,1,'2014-07-01 12:30:46.435600');
DROP TABLE IF EXISTS "auth_user_groups";
CREATE TABLE "auth_user_groups" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL REFERENCES "auth_group" ("id"),
    UNIQUE ("user_id", "group_id")
);
DROP TABLE IF EXISTS "auth_user_user_permissions";
CREATE TABLE "auth_user_user_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("user_id", "permission_id")
);
DROP TABLE IF EXISTS "django_admin_log";
CREATE TABLE "django_admin_log" (
    "id" integer NOT NULL PRIMARY KEY,
    "action_time" datetime NOT NULL,
    "user_id" integer NOT NULL,
    "content_type_id" integer,
    "object_id" text,
    "object_repr" varchar(200) NOT NULL,
    "action_flag" smallint unsigned NOT NULL,
    "change_message" text NOT NULL
);
INSERT INTO "django_admin_log" VALUES(1,'2014-07-03 13:24:48.022781',1,8,'4','Ibbi goes to Town yeah',1,'');
INSERT INTO "django_admin_log" VALUES(2,'2014-07-03 13:25:32.496527',1,8,'5','Wine Lovers yeah',1,'');
INSERT INTO "django_admin_log" VALUES(3,'2014-07-03 13:25:59.560787',1,9,'1','Fred object',1,'');
INSERT INTO "django_admin_log" VALUES(4,'2014-07-03 13:26:05.554444',1,9,'2','Fred object',1,'');
INSERT INTO "django_admin_log" VALUES(5,'2014-07-04 08:22:41.742713',1,8,'2','Title2 Wind yeah',2,'Changed body, pub_date and likes.');
DROP TABLE IF EXISTS "django_content_type";
CREATE TABLE "django_content_type" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "app_label" varchar(100) NOT NULL,
    "model" varchar(100) NOT NULL,
    UNIQUE ("app_label", "model")
);
INSERT INTO "django_content_type" VALUES(1,'log entry','admin','logentry');
INSERT INTO "django_content_type" VALUES(2,'permission','auth','permission');
INSERT INTO "django_content_type" VALUES(3,'group','auth','group');
INSERT INTO "django_content_type" VALUES(4,'user','auth','user');
INSERT INTO "django_content_type" VALUES(5,'content type','contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(6,'session','sessions','session');
INSERT INTO "django_content_type" VALUES(7,'article','django_test_1','article');
INSERT INTO "django_content_type" VALUES(8,'article','articles','article');
INSERT INTO "django_content_type" VALUES(9,'fred','articles','fred');
DROP TABLE IF EXISTS "django_session";
CREATE TABLE "django_session" (
    "session_key" varchar(40) NOT NULL PRIMARY KEY,
    "session_data" text NOT NULL,
    "expire_date" datetime NOT NULL
);
INSERT INTO "django_session" VALUES('p6hyrslenl45x2e3hye90zzhhrpcjq0y','Yjg5NmE4OGVkYTZmMzA0M2VkZDMyYjI2M2U1YmEwZjI1NjllOTZkZjp7ImxhbmciOiJlbi1nYiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-07-19 02:32:16.601663');
INSERT INTO "django_session" VALUES('gd6q3j1qnjv4xdx8yk0dwmfa1h1wqrf1','ZDk0ZGViNWJkYjRmNDczNzQxZDExYWIwMjY0MWI1MjFkODNmYTA1Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-07-18 14:09:49.583359');
INSERT INTO "django_session" VALUES('oda13bo3l51ha0ypv8xors57ye16s9qb','ZDk0ZGViNWJkYjRmNDczNzQxZDExYWIwMjY0MWI1MjFkODNmYTA1Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-08-19 02:27:54.305946');
CREATE INDEX "auth_group_permissions_5f412f9a" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_83d7f98b" ON "auth_group_permissions" ("permission_id");
CREATE INDEX "auth_permission_37ef4eb4" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_user_groups_5f412f9a" ON "auth_user_groups" ("group_id");
CREATE INDEX "auth_user_groups_6340c63c" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_user_permissions_6340c63c" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_83d7f98b" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_37ef4eb4" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_6340c63c" ON "django_admin_log" ("user_id");
CREATE INDEX "django_session_b7b81f0c" ON "django_session" ("expire_date");
