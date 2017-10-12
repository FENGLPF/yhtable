--use yhweb

--LOGO表 LogoInfo

create table LogoInfo
(
	Log_id int primary key identity(1,1) not null,
	Log_name varchar(20) null,
	Log_type varchar(20) default 'png',
	Log_path varchar(100) null,
	Log_cid int null
)


EXECUTE sp_addextendedproperty N'MS_Description', 'Logo id 主键自动增长', N'user', N'dbo', N'table', N'LogoInfo', N'column', N'Log_id'; 
EXECUTE sp_addextendedproperty N'MS_Description', 'Logo名称', N'user', N'dbo', N'table', N'LogoInfo', N'column', N'Log_name'; 
EXECUTE sp_addextendedproperty N'MS_Description', 'Logo格式 默认png', N'user', N'dbo', N'table', N'LogoInfo', N'column', N'Log_type'; 
EXECUTE sp_addextendedproperty N'MS_Description', '路径', N'user', N'dbo', N'table', N'LogoInfo', N'column', N'Log_path'; 
EXECUTE sp_addextendedproperty N'MS_Description', '商户id', N'user', N'dbo', N'table', N'LogoInfo', N'column', N'Log_cid'; 


