--use yhweb

--�û���UserInfo

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

EXECUTE sp_addextendedproperty N'MS_Description', '�û�id,�Զ�������ʶ', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_id'; 
EXECUTE sp_addextendedproperty N'MS_Description', '�̻�id', N'user', N'dbo', N'table', N'UserInfo', N'column', N'Com_id'; 
EXECUTE sp_addextendedproperty N'MS_Description', '����0:��̨�û� 4:APP�û� 13:ά��', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_typeid'; 
EXECUTE sp_addextendedproperty N'MS_Description', '�˺�', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_name'; 
EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_pass'; 
EXECUTE sp_addextendedproperty N'MS_Description', '�û���ʵ����', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_realname'; 
EXECUTE sp_addextendedproperty N'MS_Description', '��ϵ��ַ', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_address'; 
EXECUTE sp_addextendedproperty N'MS_Description', '�Ա� 0�� 1Ů Ĭ��0', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_sex'; 
EXECUTE sp_addextendedproperty N'MS_Description', '��ϵ��ʽ', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_mobile'; 
EXECUTE sp_addextendedproperty N'MS_Description', 'QQ', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_QQ'; 
EXECUTE sp_addextendedproperty N'MS_Description', '΢��', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_WX'; 
EXECUTE sp_addextendedproperty N'MS_Description', '�û���ɫ', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_type'; 
EXECUTE sp_addextendedproperty N'MS_Description', '�û�Ȩ��', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_perm'; 
EXECUTE sp_addextendedproperty N'MS_Description', '���ʱ��  Ĭ�ϵ�ǰʱ��', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_addtime'; 
EXECUTE sp_addextendedproperty N'MS_Description', '�Ƿ�ɾ�� Ĭ��0 1ɾ��', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_del'; 
EXECUTE sp_addextendedproperty N'MS_Description', '0:��ҵ 1:����', N'user', N'dbo', N'table', N'UserInfo', N'column', N'User_model'; 

