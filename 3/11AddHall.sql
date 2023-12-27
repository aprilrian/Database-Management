SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aprilyanto Setiyawan Siburian>
-- Create date: <24 Mei 2023>
-- Description:	<Stored procedure untuk hall baru ke tabel hall
-- =============================================
CREATE PROCEDURE dbo.sp_11AddHall
	-- Add the parameters for the stored procedure here
	@nama VARCHAR(50),
	@alamat VARCHAR(50),
	@jadwal DATETIME
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Hall(nama_hall, alamat, jadwal_opengate)
	VALUES (@nama, @alamat, @jadwal)
END
GO
