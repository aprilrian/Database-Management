CREATE TRIGGER auto_increment1 ON [dbo].[karyawan] 
FOR INSERT
AS 
BEGIN
	DECLARE @kode INT
	IF (SELECT COUNT(*) FROM karyawan) <= 1
		SET @kode = 1
	ELSE
		BEGIN
			SELECT TOP 2 @kode = kodekar_ang FROM karyawan ORDER BY kodekar_ang DESC
			SET @kode = @kode + 1
		END

	UPDATE karyawan SET kodekar_ang = @kode
	WHERE kodekar_ang = (SELECT TOP 1 kodekar_ang FROM inserted ORDER BY kodekar_ang DESC)
END 
GO
