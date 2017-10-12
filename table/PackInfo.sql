--use yhweb

--套餐表 PackInfo

create table PackInfo
(
	Pack_id int primary key identity(1,1) not null,
	Pack_type int null,
	Pack_date varchar(50) null,
	Pack_limit varchar(50) null,
	Pack_cid int null,
	Pack_uid int null,
	Pack_money varchar(20) null,
	Pack_name varchar(20) null,
	Pack_addtime datetime default getdate(),
	Pack_del int default 0
)

EXECUTE sp_addextendedproperty N'MS_Description', '套餐id 主键自动增长', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_id'
EXECUTE sp_addextendedproperty N'MS_Description', '套餐类型id 0寿命 1流量', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_type';
EXECUTE sp_addextendedproperty N'MS_Description', '天数', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_date'
EXECUTE sp_addextendedproperty N'MS_Description', '流量', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_limit'
EXECUTE sp_addextendedproperty N'MS_Description', '商户id', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_cid'
EXECUTE sp_addextendedproperty N'MS_Description', '用户id', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_uid'
EXECUTE sp_addextendedproperty N'MS_Description', '金额', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_money'
EXECUTE sp_addextendedproperty N'MS_Description', '套餐名称', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_name'
EXECUTE sp_addextendedproperty N'MS_Description', '添加时间', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_addtime'
EXECUTE sp_addextendedproperty N'MS_Description', '默认0 1删除', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_del'


