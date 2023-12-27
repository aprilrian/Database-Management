SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aprilyanto Setiyawan Siburian>
-- Create date: <24 Mei 2023>
-- Description:	<Stored procedure untuk menampilkan nama obat yang paling banyak diberikan 
-- kepada pasien untuk masing-masing kode obat
-- =============================================
CREATE PROCEDURE dbo.sp_10GetObatPalingBanyak
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP 1 a.nama, b.jumlah_obat AS jumlah_obat
	FROM obat a, resep b
	WHERE a.id = b.id_obat
	ORDER BY a.id DESC
END
GO
