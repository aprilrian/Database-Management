SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aprilyanto Setiyawan Siburian>
-- Create date: <24 Mei 2023>
-- Description:	<Stored procedure untuk menampilkan data riwayat kesehatan untuk masing
-- - masing pasien
-- =============================================
CREATE PROCEDURE dbo.sp_9GetRiwayatPasien 
	-- Add the parameters for the stored procedure here
	@namapas VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT a.kode_catatan, b.nama_pasien, a.riwayat
	FROM catatan_kesehatan a, pasien b
	WHERE a.kodepas_ang = b.kodepas_ang AND @namapas = b.nama_pasien
END
GO
