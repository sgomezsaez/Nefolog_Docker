SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

DO
$body$
BEGIN
   IF NOT EXISTS (
      SELECT *
      FROM   pg_catalog.pg_user
      WHERE  usename = 'postgres') THEN

      CREATE ROLE test;
      ALTER ROLE test WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION PASSWORD '123456789' VALID UNTIL 'infinity';
   END IF;

	IF EXISTS (
      		SELECT *
      		FROM   pg_catalog.pg_user
      		WHERE  usename = 'postgres') THEN
	ALTER USER postgres WITH PASSWORD '123456789';
	END IF;

END
$body$

