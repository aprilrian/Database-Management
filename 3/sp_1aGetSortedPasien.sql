SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aprilyanto Setiyawan Siburian>
-- Create date: <24 Mei 2023>
-- Description:	<Stored procedure untuk menampilkan data pasien diurutkan berdasarkan 
-- nama kode pasien dan nama pasien>
-- =============================================
CREATE PROCEDURE dbo.sp_1aGetSortedPasien 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM PASIEN
	ORDER BY kodepas_ang, kodepas_hrf nama_pasien;
END
GO
