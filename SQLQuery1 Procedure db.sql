CREATE PROCEDURE display_even_numbers_below_100
AS
BEGIN
    DECLARE @num int = 2;
    WHILE @num < 100
    BEGIN
            PRINT @num;
        SET @num = @num + 2;
    END
END

EXEC display_even_numbers_below_100;
