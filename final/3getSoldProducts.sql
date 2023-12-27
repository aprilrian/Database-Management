USE responsi
GO

CREATE PROCEDURE getSoldProducts
AS
BEGIN
    SELECT
        p.NoProduk,
        p.NamaProduk,
        SUM(j.Jumlah) AS 'Jumlah Terjual'
    FROM
        PRODUK p
        JOIN JUAL j ON p.NoProduk = j.NoProduk
    GROUP BY
        p.NoProduk,
        p.NamaProduk
    ORDER BY
        p.NoProduk;
END;
