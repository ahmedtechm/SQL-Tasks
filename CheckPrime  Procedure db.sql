CREATE PROCEDURE CheckPrime(@num SMALLINT)
AS
BEGIN
    DECLARE @i SMALLINT, @COUNT NUMERIC, @prime NUMERIC
    
    SET  @i  = 2
    SET @COUNT = 0
    
    WHILE (@i  < @num)
    BEGIN
        SET @prime = @num  %  @i
        IF @prime != 0
            SET @COUNT=@COUNT+1
        SET @i = @i + 1
    END
    
    IF @COUNT = @num-2
        PRINT 'It is a Prime Number'
    ELSE
        PRINT 'It is not Prime Number'
END

EXEC CheckPrime @num = 3


