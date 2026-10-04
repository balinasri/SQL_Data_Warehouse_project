USE master;
GO

IF EXISTS(SELECt 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- Creating the 'DataWarehouse' Database --
CREATE DATABASE DataWarehouse;
GO

USE DATABASE DataWarehouse;
GO


-- Creating Schemas --
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO


