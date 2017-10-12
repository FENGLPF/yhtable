--use yhweb


--权限表PermInfo

create table PermInfo
(
	Perm_id int primary key identity(1,1) not null,
	Perm_cid int null,
	Perm_name varchar(20) null,
	Perm_type varchar(50) null,
	Perm_level int default 0,
	Perm_addtime datetime default getdate(),
	Perm_del int default 0
)

EXECUTE sp_addextendedproperty N'MS_Description', '权限id 主键自动增长', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_id'; 
EXECUTE sp_addextendedproperty N'MS_Description', '商户id', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_cid'; 
EXECUTE sp_addextendedproperty N'MS_Description', '权限名称', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_name'; 
EXECUTE sp_addextendedproperty N'MS_Description', '操作权限', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_type'; 
EXECUTE sp_addextendedproperty N'MS_Description', '权限级别 默认0 超级管理员', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_level'; 
EXECUTE sp_addextendedproperty N'MS_Description', '添加时间 默认当前时间', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_addtime'; 
EXECUTE sp_addextendedproperty N'MS_Description', '默认0 1删除', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_del'; 


