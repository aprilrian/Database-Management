CREATE TRIGGER hapus_antrian7 ON [dbo].[catatan_kesehatan] 
FOR INSERT
AS 
BEGIN
	DELETE FROM [dbo].[antrian]
	WHERE id_antrian IN (SELECT id_antrian FROM inserted)
END 
GO