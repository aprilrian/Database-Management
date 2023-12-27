USE responsi
GO

CREATE TRIGGER updateStokProduk
ON JUAL
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Update stok
    UPDATE p
    SET p.Stok = p.Stok - i.Jumlah
    FROM PRODUK p
    INNER JOIN inserted i ON p.NoProduk = i.NoProduk;

    -- Cek stok minimum
    DECLARE @ProductWithLowStock TABLE (
        NoProduk INT,
        NamaProduk VARCHAR(255)
    );
    
    INSERT INTO @ProductWithLowStock (NoProduk, NamaProduk)
    SELECT NoProduk, NamaProduk
    FROM PRODUK
    WHERE Stok < StokMin;

    -- Tampilkan pesan
    IF EXISTS (SELECT * FROM @ProductWithLowStock)
    BEGIN
        DECLARE @Message VARCHAR(MAX);
        SET @Message = 'Perhatian! Produk dengan stok di bawah stok minimum:';
        
        SELECT @Message = @Message + CHAR(10) + '- ' + NamaProduk
        FROM @ProductWithLowStock;
        
        PRINT @Message;
    END;
END;

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

CREATE NONCLUSTERED INDEX NCI_Jual
ON JUAL (NoFaktur, NoProduk, TglFaktur)

CREATE CLUSTERED INDEX CI_Produk
ON PRODUK (Kategori, NamaProduk, NoProduk)