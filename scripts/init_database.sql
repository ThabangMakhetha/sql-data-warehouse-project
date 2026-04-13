/*
============================================================
Create Database and Schemas
============================================================

Script Purpose:
	This script creates a new database name 'SalesDataWarehouse' after checking if it exists.
	If the database exists,it it dropped and recreated.Additionally, the script sets up three
	schemas with the database: 'bronze' ,'silver', and 'gold' .

WARNING:
	Running this script will drop the entire 'SalesDataWarehouse' database if it exists.
	All data in the database will be permanently deleted.Proceed with caution and ensure
	you have proper backups before running this script.

*/

--Create Database 'SalesDataWarehouse'
USE master ;

--Drop and recreate the 'SalesDataWarehouse' database

IF EXISTS (SELECT 1 FROM sys.databases where name='SalesDataWarehouse')

BEGIN

	ALTER DATABASE SalesDataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE SalesDataWarehouse;
END;
GO

CREATE DATABASE SalesDataWarehouse ;
GO

USE SalesDataWarehouse ;

GO
CREATE SCHEMA bronze ;
GO
CREATE SCHEMA silver ;
GO
CREATE SCHEMA gold ;
