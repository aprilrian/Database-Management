USE responsi
GO

CREATE NONCLUSTERED INDEX NCI_Jual
ON JUAL (NoFaktur, NoProduk, TglFaktur)
