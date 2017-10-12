--use yhweb


--��Ʒ��CompanyInfo

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

EXECUTE sp_addextendedproperty N'MS_Description', '�̻�id �����Զ�����', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_id'; 
EXECUTE sp_addextendedproperty N'MS_Description', '�̻��ϼ�id', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_parentid';
EXECUTE sp_addextendedproperty N'MS_Description', 'ʡ��', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_provi'; 
EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_city';  
EXECUTE sp_addextendedproperty N'MS_Description', '�ؼ�', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_coun';
EXECUTE sp_addextendedproperty N'MS_Description', '��ϸ��ַ', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_address';  
EXECUTE sp_addextendedproperty N'MS_Description', '�ʱ�', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_code'; 
EXECUTE sp_addextendedproperty N'MS_Description', '��˾����', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_name'; 
EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_corpname'; 
EXECUTE sp_addextendedproperty N'MS_Description', 'Ӫҵִ�պ�', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_licence'; 
EXECUTE sp_addextendedproperty N'MS_Description', '��ϵ��ʽ���ֻ���', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_phone'; 
EXECUTE sp_addextendedproperty N'MS_Description', '��ϵ��ʽ��������', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_mobile'; 
EXECUTE sp_addextendedproperty N'MS_Description', '�Ƿ�ɾ�� Ĭ��0 1ɾ��', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_del'; 
EXECUTE sp_addextendedproperty N'MS_Description', '�Ƿ����� Ĭ��0 1����', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_start'; 
EXECUTE sp_addextendedproperty N'MS_Description', '���ʱ�� Ĭ�ϵ�ǰʱ��', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_addtime';
EXECUTE sp_addextendedproperty N'MS_Description', '���� 1�ܲ� 2vip 3һ�� 4����', N'user', N'dbo', N'table', N'CompanyInfo', N'column', N'Com_level'; 



