--use yhweb

--订单表 OrderInfo

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

EXECUTE sp_addextendedproperty N'MS_Description', '订单id 主键自动增长', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_id';
EXECUTE sp_addextendedproperty N'MS_Description', '产品id', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_pid';
EXECUTE sp_addextendedproperty N'MS_Description', '订单号', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_no';
EXECUTE sp_addextendedproperty N'MS_Description', '套餐id', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_packid';
EXECUTE sp_addextendedproperty N'MS_Description', '金额', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_money';
EXECUTE sp_addextendedproperty N'MS_Description', '用户id', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_uid';
EXECUTE sp_addextendedproperty N'MS_Description', '续费', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_renewal';
EXECUTE sp_addextendedproperty N'MS_Description', '商户id', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_cid';
EXECUTE sp_addextendedproperty N'MS_Description', '添加时间', N'user', N'dbo', N'table', N'OrderInfo', N'column', N'Order_addtime';


