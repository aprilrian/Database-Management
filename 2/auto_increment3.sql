CREATE TRIGGER auto_increment3 ON [dbo].[jadwal_shift]
FOR INSERT
AS 
BEGIN
	DECLARE @kode INT
	IF (SELECT COUNT(*) FROM jadwal_shift) <= 1 
		SET @kode = 1
	ELSE
		BEGIN
			SELECT TOP 2 @kode = kode_shift FROM jadwal_shift ORDER BY kode_shift DESC
			SET @kode = @kode + 1
	END

	UPDATE jadwal_shift SET kode_shift = @kode
	WHERE kode_shift = (SELECT TOP 1 kode_shift FROM inserted ORDER BY kode_shift DESC)
END 
GO
