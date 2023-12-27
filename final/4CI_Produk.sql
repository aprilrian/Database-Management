USE responsi
GO

CREATE CLUSTERED INDEX CI_Produk
ON PRODUK (Kategori, NamaProduk, NoProduk)