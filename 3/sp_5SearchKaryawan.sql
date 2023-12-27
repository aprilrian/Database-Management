SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aprilyanto Setiyawan Siburian>
-- Create date: <24 Mei 2023>
-- Description:	<Stored procedure untuk melakukan pencarian data karyawan berdasarkan
-- nama kode karyawan
-- =============================================
CREATE PROCEDURE dbo.sp_5SearchKaryawan
	-- Add the parameters for the stored procedure here
	@kodekar CHAR(1)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM karyawan
	WHERE @kodekar = kodekar_hrf
END
GO
