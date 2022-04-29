USE AdventureWorks2014
GO
CREATE PROCEDURE dbo.uspGetAddress
AS
SELECT * FROM Person.Address
GO
EXEC dbo.uspGetAddress

DROP PROCEDURE IF EXISTS dbo.uspGetAddress
DROP PROCEDURE IF EXISTS dbo.uspGetAddress, dbo.uspGetAddress2, dbo.uspGetAddress3, dbo.uspGetAddress4
GO

CREATE SCHEMA [ACADEMY_HR] AUTHORIZATION [dbo]

DROP SCHEMA IF EXISTS [ACADEMY_HR]

BEGIN TRY
    SELECT 1000/0 AS Result;
END TRY

BEGIN CATCH
    SELECT
        ERROR_NUMBER() AS [Error_Code],
        ERROR_PROCEDURE() AS [Invalid_Proc],
        ERROR_MESSAGE() AS [Error_Details];
END CATCH

--Pasing Parameters--
CREATE PROC dbo.uspGetEmployeeRecords@EmpID nvarchar(30)
AS
SELECT * FROM tblEmployees.Portland
WHERE EmpKey = @EmpID
GO
EXEC dbo.uspGetEmployeeRecords@EmpID='98002zd89'

--Example--
CREATE PROCEDURE dbo.uspGetAddress2@City nvarchar(30)
AS
SELECT * FROM Person.Address
WHERE City Like @City + '%'
GO
EXEC dbo.uspGetAddress2 @City = 'New'