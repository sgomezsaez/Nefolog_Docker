--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

DROP DATABASE IF EXISTS "PGCloudmigration";
CREATE DATABASE "PGCloudmigration" WITH TEMPLATE = template0 ENCODING = 'UTF8';
ALTER DATABASE "PGCloudmigration" OWNER TO postgres;


CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;

