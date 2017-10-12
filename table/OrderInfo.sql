--use yhweb

--������ OrderInfo

create table OrderInfo
(
	Order_id int primary key identity(1,1) not null,
	Order_pid int null,
	Order_no varchar(50) null,
	Order_packid int null,
	Order_money varchar(50) null,
	Order_uid int null,
	Order_renewal varchar(20) null,
	Order_cid varchar(50) null,
	Order_addtime datetime default getdate()
)

EXECUTE sp_addextendedproperty N'MS_Description', '����id �����Զ�����', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_id';
EXECUTE sp_addextendedproperty N'MS_Description', '��Ʒid', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_pid';
EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_no';
EXECUTE sp_addextendedproperty N'MS_Description', '�ײ�id', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_packid';
EXECUTE sp_addextendedproperty N'MS_Description', '���', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_money';
EXECUTE sp_addextendedproperty N'MS_Description', '�û�id', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_uid';
EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_renewal';
EXECUTE sp_addextendedproperty N'MS_Description', '�̻�id', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_cid';
EXECUTE sp_addextendedproperty N'MS_Description', '���ʱ��', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_addtime';


