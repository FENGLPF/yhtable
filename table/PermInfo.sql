--use yhweb


--Ȩ�ޱ�PermInfo

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

EXECUTE sp_addextendedproperty N'MS_Description', 'Ȩ��id �����Զ�����', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_id'; 
EXECUTE sp_addextendedproperty N'MS_Description', '�̻�id', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_cid'; 
EXECUTE sp_addextendedproperty N'MS_Description', 'Ȩ������', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_name'; 
EXECUTE sp_addextendedproperty N'MS_Description', '����Ȩ��', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_type'; 
EXECUTE sp_addextendedproperty N'MS_Description', 'Ȩ�޼��� Ĭ��0 ��������Ա', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_level'; 
EXECUTE sp_addextendedproperty N'MS_Description', '���ʱ�� Ĭ�ϵ�ǰʱ��', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_addtime'; 
EXECUTE sp_addextendedproperty N'MS_Description', 'Ĭ��0 1ɾ��', N'user', N'dbo', N'table', N'PermInfo', N'column', N'Perm_del'; 


