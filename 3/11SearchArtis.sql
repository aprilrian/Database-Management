SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aprilyanto Setiyawan Siburian>
-- Create date: <24 Mei 2023>
-- Description:	<Stored procedure untuk mencari artis berdasarkan nama artis
-- =============================================
CREATE PROCEDURE dbo.sp_11SearchArtis
	-- Add the parameters for the stored procedure here
	@nama VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM artis
	WHERE nama_artis = @nama
END
GO
