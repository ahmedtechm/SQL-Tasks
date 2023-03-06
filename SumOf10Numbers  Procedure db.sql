CREATE PROCEDURE CalculateSumOf10Numbers
AS
BEGIN
    DECLARE @sum INT = 0
    DECLARE @i INT = 1

    WHILE @i <= 10
    BEGIN
        SET @sum = @sum + @i
        SET @i = @i + 1
    END

    SELECT @sum AS SumOf10Numbers
END


EXEC CalculateSumOf10Numbers
