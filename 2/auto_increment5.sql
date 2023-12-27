CREATE TRIGGER auto_increment5 ON [dbo].[stock_obat] 
FOR INSERT
AS 
BEGIN
	DECLARE @kode INT
	IF (SELECT COUNT(*) FROM stok_obat) <= 1
		SET @kode = 1
	ELSE
		BEGIN
			SELECT TOP 2 @kode = kodesto_ang FROM stok_obat ORDER BY kodesto_ang DESC
			SET @kode = @kode + 1
		END
	
	UPDATE stok_obat SET kodesto_ang = @kode
	WHERE kodesto_ang = (SELECT TOP 1 kodesto_ang FROM inserted ORDER BY kodesto_ang DESC)
END 
GO
