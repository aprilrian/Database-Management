SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aprilyanto Setiyawan Siburian>
-- Create date: <24 Mei 2023>
-- Description:	<Stored procedure untuk menampilkan jumlah pasien untuk masing-masing 
-- nama kode pasien (jumlah pasien keseluruhan)
-- =============================================
CREATE PROCEDURE dbo.sp_3GetTotalPasien
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT kodepas_hrf, COUNT(*) AS jumlah_pasien
	FROM pasien
	GROUP BY kodepas_hrf
END
GO
