--use yhweb

--用户表UserInfo

create table UserInfo
(
	User_id int primary key identity(1,1) not null,
	Com_id int null,
	User_typeid int not null,
	User_name varchar(20) not null,
	User_pass varchar(20) not null,
	User_realname varchar(50) null,
	User_address varchar(50) null,
	User_sex int default 0,
	User_mobile varchar(11) not null,
	User_email varchar(30) null,
	User_QQ varchar(20) null,
	User_WX varchar(20) null,
	User_type int null,
	User_perm int null,
	User_addtime datetime default getdate(),
	User_del int default 0,
	User_model int 
)

EXECUTE sp_addextendedproperty N'MS_Description', '用户id,自动增长标识', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_id'; 
EXECUTE sp_addextendedproperty N'MS_Description', '商户id', N'user', N'dbo', N'table', N'UserInfo', N'column', N'Com_id'; 
EXECUTE sp_addextendedproperty N'MS_Description', '类型0:后台用户 4:APP用户 13:维修', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_typeid'; 
EXECUTE sp_addextendedproperty N'MS_Description', '账号', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_name'; 
EXECUTE sp_addextendedproperty N'MS_Description', '密码', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_pass'; 
EXECUTE sp_addextendedproperty N'MS_Description', '用户真实姓名', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_realname'; 
EXECUTE sp_addextendedproperty N'MS_Description', '联系地址', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_address'; 
EXECUTE sp_addextendedproperty N'MS_Description', '性别 0男 1女 默认0', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_sex'; 
EXECUTE sp_addextendedproperty N'MS_Description', '联系方式', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_mobile'; 
EXECUTE sp_addextendedproperty N'MS_Description', 'QQ', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_QQ'; 
EXECUTE sp_addextendedproperty N'MS_Description', '微信', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_WX'; 
EXECUTE sp_addextendedproperty N'MS_Description', '用户角色', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_type'; 
EXECUTE sp_addextendedproperty N'MS_Description', '用户权限', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_perm'; 
EXECUTE sp_addextendedproperty N'MS_Description', '添加时间  默认当前时间', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_addtime'; 
EXECUTE sp_addextendedproperty N'MS_Description', '是否删除 默认0 1删除', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_del'; 
EXECUTE sp_addextendedproperty N'MS_Description', '0:企业 1:个人', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_model'; 

