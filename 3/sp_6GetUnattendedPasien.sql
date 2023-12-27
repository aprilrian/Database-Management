SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aprilyanto Setiyawan Siburian>
-- Create date: <24 Mei 2023>
-- Description:	<Stored procedure untuk menampilkan data pasien yang sudah tidak 
-- mendaftar dalam antrian tetapi tidak melakukan pemeriksaan untuk masing-masing 
-- tanggal pemeriksaan
-- =============================================
CREATE PROCEDURE dbo.sp_6GetUnattendedPasien 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT k.kodekar_hrf, k.kodekar_ang, p.nama_pasien, r.no_ruangan, r.nama_ruangan
	FROM antrian a, karyawan k, pasien p, ruangan r
	WHERE a.kodekar_ang = k.kodekar_ang 
	AND a.kodepas_ang = p.kodepas_ang
	AND a.no_ruangan = r.no_ruangan
END
GO
