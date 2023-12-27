CREATE TRIGGER auto_increment2 ON [dbo].[ruangan] 
FOR INSERT
AS 
BEGIN
	DECLARE @nomor INT
	IF (SELECT COUNT(*) FROM ruangan) <= 1
		SET @nomor = 1
	ELSE
		BEGIN
			SELECT TOP 2 @nomor = no_ruangan FROM ruangan ORDER BY no_ruangan DESC
			SET @nomor = @nomor + 1
	END

	UPDATE ruangan SET no_ruangan = @nomor
	WHERE no_ruangan = (SELECT TOP 1 no_ruangan FROM inserted ORDER BY no_ruangan DESC)
END 
GO
