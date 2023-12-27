SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aprilyanto Setiyawan Siburian>
-- Create date: <24 Mei 2023>
-- Description:	<Stored procedure untuk menampilkan data jadwal shift karyawan per
-- minggu untuk masing-masing karyawan
-- =============================================
CREATE PROCEDURE dbo.sp_7GetWeeklyShiftSchedule
	-- Add the parameters for the stored procedure here
	@tanggal_awal DATE,
    @tanggal_akhir DATE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM jadwal_shift
	WHERE CONVERT(DATE, hari) >= @tanggal_awal AND CONVERT(DATE, hari) <= @tanggal_akhir
END
GO
