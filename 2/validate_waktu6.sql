CREATE TRIGGER validate_waktu6 ON [dbo].[antrian]
AFTER INSERT, UPDATE
AS 
BEGIN
	DECLARE @waktu_sekarang datetime 
	SELECT @waktu_sekarang = GETDATE()

	IF EXISTS (SELECT * FROM inserted WHERE waktu_antrian < @waktu_sekarang)
	BEGIN
		RAISERROR('Waktu antrian tidak valid! Waktu antrian harus sama atau setelah waktu saat ini.', 16, 1)
		ROLLBACK TRANSACTION 
		RETURN
	END
END 
GO

