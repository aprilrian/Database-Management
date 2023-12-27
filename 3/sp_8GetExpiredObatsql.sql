SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aprilyanto Setiyawan Siburian>
-- Create date: <24 Mei 2023>
-- Description:	<Stored procedure untuk menampilkan data obat yang sudah kadaluarsa per hari
-- =============================================
CREATE PROCEDURE dbo.sp_8GetExpiredObat
AS
BEGIN
	DECLARE @today DATE = GETDATE()
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM obat
	WHERE expired < @today
END
GO
