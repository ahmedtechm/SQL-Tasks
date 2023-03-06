CREATE PROCEDURE sp_display_multiples
    @start_num INT,
    @end_num INT
AS
BEGIN
    DECLARE @current_num INT = @start_num;

    WHILE (@current_num <= @end_num)
    BEGIN
        PRINT 'Multiples of ' + CONVERT(VARCHAR(10), @current_num) + ':';

        DECLARE @i INT = 1;

        WHILE (@i <= 20)
        BEGIN
            PRINT CONVERT(VARCHAR(10), @current_num * @i);
            SET @i = @i + 1;
        END

        SET @current_num = @current_num + 1;
    END
END


EXEC sp_display_multiples @start_num = 2, @end_num = 5;
