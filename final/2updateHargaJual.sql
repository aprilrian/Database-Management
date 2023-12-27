USE responsi
GO

CREATE TRIGGER updateHargaJual
ON PRODUK
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    IF UPDATE(HargaPokok)
    BEGIN
        UPDATE p
        SET p.HargaJual = p.HargaPokok + (0.05 * p.HargaPokok)
        FROM PRODUK p
        INNER JOIN inserted i ON p.NoProduk = i.NoProduk;
    END
END;
