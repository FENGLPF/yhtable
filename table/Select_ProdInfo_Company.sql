USE [yhtest]
GO

/****** Object:  StoredProcedure [dbo].[Select_ProdInfo_Company]    Script Date: 2017/10/12 ������ 14:56:22 ******/
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
	select Prod_psn as ��Ʒ���к�,Prod_name as ��Ʒ����,Prod_outtime as ��������,
		   Prod_userstart as ʹ��״̬,Com_name as �����̻� 
	from ProdInfo LEFT JOIN CompanyInfo 
	on ProdInfo.Prod_parentcid=CompanyInfo.Com_parentid
	where Com_name=@Com_name;

END

GO


