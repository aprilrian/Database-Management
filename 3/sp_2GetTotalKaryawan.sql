SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aprilyanto Setiyawan Siburian>
-- Create date: <24 Mei 2023>
-- Description:	<Stored procedure untuk menampilkan jumlah karyawan untuk 
-- masing-masing nama kode karyawan (jumlah karyawan keseluruhan)
-- =============================================
CREATE PROCEDURE dbo.sp_2GetTotalKaryawan 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT kodekar_hrf, COUNT(*) AS jumlah_karyawan
	FROM karyawan
	GROUP BY kodekar_hrf
END
GO
