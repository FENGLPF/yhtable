--use yhweb

--�ײͱ� PackInfo

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

EXECUTE sp_addextendedproperty N'MS_Description', '�ײ�id �����Զ�����', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_id'
EXECUTE sp_addextendedproperty N'MS_Description', '�ײ�����id 0���� 1����', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_type';
EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_date'
EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_limit'
EXECUTE sp_addextendedproperty N'MS_Description', '�̻�id', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_cid'
EXECUTE sp_addextendedproperty N'MS_Description', '�û�id', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_uid'
EXECUTE sp_addextendedproperty N'MS_Description', '���', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_money'
EXECUTE sp_addextendedproperty N'MS_Description', '�ײ�����', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_name'
EXECUTE sp_addextendedproperty N'MS_Description', '���ʱ��', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_addtime'
EXECUTE sp_addextendedproperty N'MS_Description', 'Ĭ��0 1ɾ��', N'user', N'dbo', N'table', N'PackInfo', N'column', N'Pack_del'


