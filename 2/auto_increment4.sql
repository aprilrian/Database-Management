CREATE TRIGGER auto_increment4 ON [dbo].[pasien] 
FOR INSERT
AS 
BEGIN
	DECLARE @kode INT
	IF (SELECT COUNT(*) FROM pasien) <= 1
		SET @kode = 1
	ELSE
		BEGIN
			SELECT TOP 2 @kode = kodepas_ang FROM pasien ORDER BY kodepas_ang DESC
			SET @kode = @kode + 1
		END

	UPDATE pasien SET kodepas_ang = @kode
	WHERE kodepas_ang = (SELECT TOP 1 kodepas_ang FROM inserted ORDER BY kodepas_ang DESC)
END 
GO
