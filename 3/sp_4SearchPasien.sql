SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aprilyanto Setiyawan Siburian>
-- Create date: <24 Mei 2023>
-- Description:	<Stored procedure untuk melakukan pencarian data pasien berdasarkan
-- nama
-- =============================================
CREATE PROCEDURE dbo.sp_4SearchPasien 
	-- Add the parameters for the stored procedure here
	@namapas varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM pasien
	WHERE @namapas = nama_pasien
END
GO
