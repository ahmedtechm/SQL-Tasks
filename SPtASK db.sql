CREATE TABLE Registration
(
  AcNo INT PRIMARY KEY,
  FName VARCHAR(15) NOT NULL,
  LName VARCHAR(15) NOT NULL,
  DOB DATE,
  RegDate DATE DEFAULT GETDATE(),
  CivilID INT NOT NULL,
  Gender CHAR(1),
  GSM INT,
  OpenBal DECIMAL(10,2),
  CONSTRAINT gsm_unique UNIQUE(GSM),
  CONSTRAINT Openbal_check CHECK(OpenBal >= 50),
  CONSTRAINT gender_check CHECK(Gender IN('M','m','F','f'))
);



CREATE TABLE Deposits
(
  DNO INT PRIMARY KEY,
  AcNO INT,
  DDate DATE DEFAULT GETDATE(),
  DAmt DECIMAL(10,2) NOT NULL,
  DLocation VARCHAR(10) NOT NULL,
  CONSTRAINT dept_reg_FK FOREIGN KEY(AcNO) REFERENCES Registration(AcNo)
);


CREATE TABLE Withdrawls
(
  WNo INT PRIMARY KEY,
  AcNO INT,
  WDate DATE DEFAULT GETDATE(),
  WAmount DECIMAL(10,2) NOT NULL,
  WLocation VARCHAR(10) NOT NULL,
  CONSTRAINT dept_Withd_FK FOREIGN KEY(AcNO) REFERENCES Registration(AcNo)
);


------------------->>>> Procedure Reg_Add_Record (All colums) <<<-------------------


CREATE PROCEDURE Reg_Add_Record
(
    @AcNo INT,
    @FName VARCHAR(15),
    @LName VARCHAR(15),
    @DOB DATE,
    @RegDate DATE,
    @CivilID INT,
    @Gender CHAR(1),
    @Gsm INT,
    @OpenBal DECIMAL(10,2)
)
AS
BEGIN
    INSERT INTO Registration (AcNo, FName, LName, DOB, RegDate, CivilID, Gender, GSM, OpenBal)
    VALUES (@AcNo, @FName, @LName, @DOB, @RegDate, @CivilID, @Gender, @Gsm, @OpenBal);
    PRINT('Record saved successfully');
END


EXEC Reg_Add_Record 1111, 'Ahmed', 'AL Abri', '1995-01-01', '2023-02-26', 22444982, 'Male', 97622797, 100.00;

EXEC Reg_Add_Record 2222, 'AbdulHamid', 'AL Hasisi', '1997-05-01', '2023-02-26', 335335345, 'Male', 99946745, 100.00;

EXEC Reg_Add_Record 3333, 'Abdul Aziz', 'AL Nasri', '1998-01-01', '2023-02-26', 23234543, 'Male', 9867655, 80.00;

EXEC Reg_Add_Record 4444, 'Ali', 'AL kindi', '1996-01-01', '2023-02-26', 65734543, 'Male', 986476, 90.00;

EXEC Reg_Add_Record 5555, 'adnan', 'AL kindi', '1996-01-01', '2023-02-26', 6465477, 'Male', 9884464, 90.00;



--DROP PROCEDURE Reg_Add_Record;

--DELETE FROM Registration WHERE AcNo = 1234567890






------------------->>>> Procedure Reg_Update_OpenGSM (AcNo,newGSM) <<<-------------------


CREATE PROCEDURE Reg_Update_OpenGSM
    @AcNo INT,
    @NewGSM INT
AS
BEGIN
    UPDATE Registration
    SET GSM = @NewGSM
    WHERE AcNo = @AcNo;
    PRINT 'GSM number updated successfully';
END


EXEC Reg_Update_OpenGSM @AcNo = 1111, @NewGSM = 98765432;




------------------->>>> Procedure Reg_Del_Record (AcNo)  <<<-------------------


CREATE PROCEDURE Reg_Del_Record
    @AcNo INT
AS
BEGIN
    DELETE FROM Registration
    WHERE AcNo = @AcNo;
    PRINT 'Record deleted successfully';
END


EXEC Reg_Del_Record @AcNo = 4444;


------------------->>>> Procedure Deposit_Amt (All columns)  <<<-------------------


CREATE PROCEDURE Deposit_Amt
    @AcNo INT,
    @DAmt DECIMAL(10,2),
    @DLocation VARCHAR(10)
AS
BEGIN
    INSERT INTO Deposits (AcNo, DAmt, DLocation)
    VALUES (@AcNo, @DAmt, @DLocation);
    PRINT 'Deposit record saved successfully';
END


EXEC Deposit_Amt @AcNo = 1111, @DAmt = 500, @DLocation = 'ATM';


------------------->>>> Procedure Withdraw_Amt (All columns)   <<<-------------------


CREATE PROCEDURE Withdraw_Amt
  @WNo INT,
  @AcNo INT,
  @WDate DATE,
  @WAmount DECIMAL(10,2),
  @WLocation VARCHAR(10)
AS
BEGIN
UPDATE Withdrawls
        SET WAmount = WAmount - @WAmount
        WHERE AcNo = @AcNo
  INSERT INTO Withdrawls (WNo, AcNo, WDate, WAmount, WLocation)
  VALUES (@WNo, @AcNo, @WDate, @WAmount, @WLocation)
END


EXEC Withdraw_Amt 1, 1111, '2023-02-26', 300.00, 'ATM'
EXEC Withdraw_Amt 2, 1111, '2023-02-26', 500.00, 'ATM'

SELECT * FROM Withdrawls