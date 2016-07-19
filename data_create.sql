insert into `SYS_DEPART` (`DEPART_CODE`,`DEPART_NAME`,`DEPART_TYPE`,`DEPART_ADDRESS`) values ('130600000','保定银行营业部','0','保定市朝阳北大街889号');

select * from `SYS_DEPART`;


insert into `SYS_USER` (`DEPART_ID`,`USERNAME`,`PASSWORD`,`NAME`) values('1','3006','af8f9dffa5d420fbc249141645b962ee','小冰');

select * from `SYS_USER`;


insert into `SYS_ROLE` (`ROLE_NAME`,`ROLE_LEVEL`,`DESCRIBE`) values('超级管理员','0','最高权限');
insert into `SYS_ROLE` (`ROLE_NAME`,`ROLE_LEVEL`,`DESCRIBE`) values('管理员','1','一般权限');
insert into `SYS_ROLE` (`ROLE_NAME`,`ROLE_LEVEL`,`DESCRIBE`) values('操作员','2','一般权限');
insert into `SYS_ROLE` (`ROLE_NAME`,`ROLE_LEVEL`,`DESCRIBE`) values('普通用户','3','最低权限');

select * from `SYS_ROLE`;

insert into `SYS_USER_ROLE` values(1,1);


insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('系统首页','right.jsp','0','1','style/images/MenuIcon/FUNC20056.gif','1','right','level1','1');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('存款管理','','0','2','style/images/MenuIcon/FUNC20101.gif','1','','level1','1');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('贷款管理','','0','3','style/images/MenuIcon/FUNC20057.gif','1','','level1','1');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('通知管理','','0','4','style/images/MenuIcon/FUNC20064.gif','1','','level1','1');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('个人设置','','0','5','style/images/MenuIcon/FUNC20077.gif','1','','level1','1');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('系统管理','','0','6','style/images/MenuIcon/FUNC20082.gif','1','','level1','1');

insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('存款人查询','Deposit_Manage/DepositorQuery.jsp','2','1','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('存款账户查询','Deposit_Manage/DepositAcntQuery.jsp','2','2','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('存款变动信息','Deposit_Manage/DepositChgeQuery.jsp','2','3','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('存款信息查询','Deposit_Manage/DepositMsgQuery.jsp','2','4','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('存款信息统计','Deposit_Manage/DepositMsgStatis.jsp','2','5','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('异常存款统计','Deposit_Manage/DepositAbnalQuery.jsp','2','6','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');

insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('贷款人查询','Loan_Manage/LoanerQuery.jsp','3','1','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('贷款账户查询','Loan_Manage/LoanAcntQuery.jsp','3','2','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('还款计划查询','Loan_Manage/RepayPlanQuery.jsp','3','3','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('还款信息查询','Loan_Manage/LoanMsgQuery.jsp','3','4','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('还款信息统计','Loan_Manage/LoanMsgStatisQuery.jsp','3','5','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('异常还款统计','Loan_Manage/LoanAbnalQuery.jsp','3','6','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');

insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('短信提醒设置','Notice_Manage/MsgNoticeQuery.jsp','4','1','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('发送短信查询','Notice_Manage/SendMsgQuery.jsp','4','2','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('发送短信统计','Notice_Manage/SendMsgStatisQuery.jsp','4','3','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('异常短信统计','Notice_Manage/NoticeAbnalQuery.jsp','4','4','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');

insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('个人信息','Person_Manage/PersonMsgManage.jsp','5','1','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('密码修改','Person_Manage/ChangePwd.jsp','5','2','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');

insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('用户管理','System_Manage/SysUserManage.jsp','6','1','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('菜单管理','System_Manage/SysMenuManage.jsp','6','2','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('权限管理','System_Manage/SysRightsManage.jsp','6','3','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');
insert into `SYS_MENU` (`MENU_NAME`,`MENU_URL`,`MENU_PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`,`MENU_TARGET`,`MENU_CSS`,`MENU_LEVEL`) values('机构管理','System_Manage/SysDepartManage.jsp','6','4','style/images/MenuIcon/menu_arrow_single.gif','1','right','level2','2');

insert into `SYS_ROLE_MENU` values(1,1);
insert into `SYS_ROLE_MENU` values(1,2);
insert into `SYS_ROLE_MENU` values(1,3);
insert into `SYS_ROLE_MENU` values(1,4);
insert into `SYS_ROLE_MENU` values(1,5);
insert into `SYS_ROLE_MENU` values(1,6);
insert into `SYS_ROLE_MENU` values(1,7);
insert into `SYS_ROLE_MENU` values(1,8);
insert into `SYS_ROLE_MENU` values(1,9);
insert into `SYS_ROLE_MENU` values(1,10);
insert into `SYS_ROLE_MENU` values(1,11);
insert into `SYS_ROLE_MENU` values(1,12);
insert into `SYS_ROLE_MENU` values(1,13);
insert into `SYS_ROLE_MENU` values(1,14);
insert into `SYS_ROLE_MENU` values(1,15);
insert into `SYS_ROLE_MENU` values(1,16);
insert into `SYS_ROLE_MENU` values(1,17);
insert into `SYS_ROLE_MENU` values(1,18);
insert into `SYS_ROLE_MENU` values(1,19);
insert into `SYS_ROLE_MENU` values(1,20);
insert into `SYS_ROLE_MENU` values(1,21);
insert into `SYS_ROLE_MENU` values(1,22);
insert into `SYS_ROLE_MENU` values(1,23);
insert into `SYS_ROLE_MENU` values(1,24);
insert into `SYS_ROLE_MENU` values(1,25);
insert into `SYS_ROLE_MENU` values(1,26);
insert into `SYS_ROLE_MENU` values(1,27);
insert into `SYS_ROLE_MENU` values(1,28);


select * from SYS_MENU where MENU_ID in(
	select DISTINCT MENU_ID from SYS_ROLE_MENU where ROLE_ID in(
		select ROLE_ID from SYS_USER_ROLE where USER_ID=1
	)
) order by MENU_LEVEL,MENU_PARENT_ID,MENU_ORDER



select MIN(LOGIN_TIME) from SYS_LOGIN_RECORD

select date_sub(now(),interval 5 minute) from `SYS_USER`; 

select IFNULL(SUM(LOGIN_CODE),0) 
from SYS_LOGIN_RECORD 
where  LOGIN_CODE='1' and LOGIN_TIME >= date_sub(now(),interval 2+5  minute)

select IFNULL(SUM(LOGIN_CODE),0) from SYS_LOGIN_RECORD where USER_ID=3006 and LOGIN_CODE='1' and LOGIN_TIME >= date_sub(now(),interval 2+5 minute) 

select * from SYS_LOGIN_RECORD



insert into `DATA_DEPOSIT_ACCOUNT`
