USE [yhweb]
GO

/****** Object:  Table [dbo].[ProdInfo]    Script Date: 2017/10/11 星期三 16:37:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO


--产品表ProdInfo

CREATE TABLE [dbo].[ProdInfo](
	[Prod_id] [int] IDENTITY(1,1) NOT NULL,
	[Prod_cid] [int] NULL,
	[Prod_parentcid] [int] NULL,
	[Prod_uid] [int] NULL,
	[Prod_mid] [int] NULL,
	[Prod_name] [varchar](50) NULL,
	[Prod_psn] [varchar](20) NULL,
	[Prod_userstart] [int] NULL,
	[Prod_curtemper] [varchar](50) NULL,
	[Prod_settemper] [varchar](50) NULL,
	[Prod_watertemper] [varchar](50) NULL,
	[Prod_ambtemper] [varchar](50) NULL,
	[Prod_forcshtdown] [int] NULL,
	[Prod_switchstatus] [int] NULL,
	[Prod_datasum] [varchar](50) NULL,
	[Prod_mfgdate] [datetime] NULL,
	[Prod_ip] [varchar](50) NULL,
	[Prod_activedate] [datetime] NULL,
	[Prod_single] [int] NULL,
	[Prod_lease] [int] NULL,
	[Prod_opencount] [int] NULL,
	[Prod_outtime] [datetime] NULL,
	[Prod_del] [int] NULL,
	[Prod_accpower] [numeric](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Prod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[ProdInfo] ADD  DEFAULT ((0)) FOR [Prod_userstart]
GO

ALTER TABLE [dbo].[ProdInfo] ADD  DEFAULT ((0)) FOR [Prod_del]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品id 主键自动增长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_cid'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商户上级id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_parentcid'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_uid'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_mid'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品序列号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_psn'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'激活状态 4激活 0默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_userstart'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前温度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_curtemper'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设置温度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_settemper'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水箱温度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_watertemper'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'环境温度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_ambtemper'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'强制关机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_forcshtdown'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开关状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_switchstatus'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已用流量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_datasum'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_mfgdate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ip地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_ip'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_activedate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_single'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否故障' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_lease'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_opencount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出厂日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_outtime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除 默认0 删除为1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_del'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累计电量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProdInfo', @level2type=N'COLUMN',@level2name=N'Prod_accpower'
GO

