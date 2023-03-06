CREATE PROCEDURE DisplayOddNumbersBelow100
AS
BEGIN
    DECLARE @counter INT = 1
    WHILE @counter < 100
    BEGIN
        IF @counter % 2 = 1
            PRINT @counter
        SET @counter = @counter + 1
    END
END

EXEC DisplayOddNumbersBelow100;