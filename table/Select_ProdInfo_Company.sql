USE [yhtest]
GO

/****** Object:  StoredProcedure [dbo].[Select_ProdInfo_Company]    Script Date: 2017/10/12 星期四 14:56:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_ProdInfo_Company]
(
	@Com_name varchar(20)
)
AS
BEGIN
	select Prod_psn as 产品序列号,Prod_name as 产品名称,Prod_outtime as 出厂日期,
		   Prod_userstart as 使用状态,Com_name as 所属商户 
	from ProdInfo LEFT JOIN CompanyInfo 
	on ProdInfo.Prod_parentcid=CompanyInfo.Com_parentid
	where Com_name=@Com_name;

END

GO


