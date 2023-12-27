CREATE TRIGGER auto_increment2_fixed9 ON [dbo].[ruangan] 
FOR INSERT
AS 
BEGIN
	DECLARE @nomor INT
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

	BEGIN TRANSACTION
	SELECT @nomor = MAX(no_ruangan) FROM ruangan WITH (UPDLOCK, HOLDLOCK)

	IF @nomor IS NULL 
		SET @nomor = 1
	ELSE
		SET @nomor = @nomor + 1
	
	UPDATE ruangan SET no_ruangan = @nomor 
	
	COMMIT TRANSACTION

END 
GO
