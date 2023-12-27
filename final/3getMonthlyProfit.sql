USE responsi
GO

CREATE PROCEDURE getMonthlyProfit
AS
BEGIN
    SELECT
        MONTH(TglFaktur) AS Bulan,
        YEAR(TglFaktur) AS Tahun,
        SUM(Jumlah * (HargaJual - HargaPokok)) AS TotalPendapatan,
        SUM(Jumlah * (HargaJual - HargaPokok) - (Jumlah * HargaPokok)) AS TotalLaba
    FROM
        JUAL j
        JOIN PRODUK p ON j.NoProduk = p.NoProduk
    GROUP BY
        MONTH(TglFaktur),
        YEAR(TglFaktur)
    ORDER BY
     YEAR(TglFaktur),
     MONTH(TglFaktur);
END;
