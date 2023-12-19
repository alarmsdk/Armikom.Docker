USE [master]

create database armikom
Go
CREATE LOGIN [armikom] WITH PASSWORD =N'armikom', DEFAULT_DATABASE = [armikom], CHECK_EXPIRATION = OFF, CHECK_POLICY = OFF
Go
USE [armikom];
Go
CREATE USER [armikom] FOR LOGIN [armikom] WITH DEFAULT_SCHEMA =[dbo];
Go
ALTER ROLE [db_owner] ADD MEMBER [armikom];
Go

