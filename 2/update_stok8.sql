CREATE TRIGGER update_stok8 ON [dbo].[resep] 
AFTER INSERT
AS 
BEGIN
	DECLARE @jumlah_obat INT
	SELECT @jumlah_obat = COUNT(*) FROM inserted WHERE id_resep = inserted.id_resep

	UPDATE stock_obat SET jumlah_stock = jumlah_stock - @jumlah_obat 
	WHERE nama_obat = (SELECT catatan_resep FROM inserted);
END
