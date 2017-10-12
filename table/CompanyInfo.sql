--use yhweb


--商品表CompanyInfo

create table CompanyInfo
(
	Com_id int primary key identity(1,1) not null,
	Com_parentid int not null,
	Com_provi varchar(20) not null,
	Com_city varchar(20) not null,
	Com_coun varchar(20) not null,
	Com_address varchar(100) not null,
	Com_code varchar(6) null,
	Com_name varchar(20) not null,
	Com_corpname varchar(20)  null,
	Com_licence varchar(20)  null,
	Com_phone varchar(11)  null,
	Com_mobile varchar(20)  null,
	Com_del int default 0,
	Com_start int default 0,
	Com_addtime datetime default getdate(),
	Com_level int
)

EXECUTE sp_addextendedproperty N'MS_Description', '商户id 主键自动增长', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_id'; 
EXECUTE sp_addextendedproperty N'MS_Description', '商户上级id', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_parentid';
EXECUTE sp_addextendedproperty N'MS_Description', '省份', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_provi'; 
EXECUTE sp_addextendedproperty N'MS_Description', '城市', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_city';  
EXECUTE sp_addextendedproperty N'MS_Description', '县级', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_coun';
EXECUTE sp_addextendedproperty N'MS_Description', '详细地址', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_address';  
EXECUTE sp_addextendedproperty N'MS_Description', '邮编', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_code'; 
EXECUTE sp_addextendedproperty N'MS_Description', '公司名称', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_name'; 
EXECUTE sp_addextendedproperty N'MS_Description', '法人', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_corpname'; 
EXECUTE sp_addextendedproperty N'MS_Description', '营业执照号', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_licence'; 
EXECUTE sp_addextendedproperty N'MS_Description', '联系方式（手机）', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_phone'; 
EXECUTE sp_addextendedproperty N'MS_Description', '联系方式（座机）', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_mobile'; 
EXECUTE sp_addextendedproperty N'MS_Description', '是否删除 默认0 1删除', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_del'; 
EXECUTE sp_addextendedproperty N'MS_Description', '是否启用 默认0 1禁用', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_start'; 
EXECUTE sp_addextendedproperty N'MS_Description', '添加时间 默认当前时间', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_addtime';
EXECUTE sp_addextendedproperty N'MS_Description', '级别 1总部 2vip 3一级 4二级', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_level'; 



