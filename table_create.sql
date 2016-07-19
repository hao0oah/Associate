
--CREATE DATABASE db_hao DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `SYS_DEPART`;
CREATE TABLE `SYS_DEPART` (
  `DEPART_ID` INT(6) NOT NULL AUTO_INCREMENT,
  `DEPART_CODE` VARCHAR(10) NOT NULL,
  `DEPART_NAME` VARCHAR(30) NOT NULL,
  `DEPART_TYPE` INT(3) NOT NULL,
  `DEPART_ADDRESS` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`DEPART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `SYS_USER`;
CREATE TABLE `SYS_USER` (
  `USER_ID` INT(10) NOT NULL AUTO_INCREMENT,
  `DEPART_ID` INT(6) NOT NULL,
  `USERNAME` VARCHAR(30) NOT NULL UNIQUE,
  `PASSWORD` VARCHAR(32) NOT NULL,
  `NAME` VARCHAR(20) DEFAULT NULL,
  `EMAIL` VARCHAR(50) DEFAULT NULL,
  `PHONE` VARCHAR(12) DEFAULT NULL,
  `QQ` VARCHAR(12) DEFAULT NULL,
  `STATUS` INT(1) DEFAULT 0,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `SYS_ROLE`;
CREATE TABLE `SYS_ROLE` (
  `ROLE_ID` INT(6) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` VARCHAR(30) NOT NULL,
  `ROLE_LEVEL` INT(3) NOT NULL DEFAULT 0,
  `DESCRIBE` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `SYS_USER_ROLE`;
CREATE TABLE `SYS_USER_ROLE` (
  `USER_ID` INT(10) NOT NULL,
  `ROLE_ID` INT(6) NOT NULL,
  UNIQUE KEY `UNIQ_USER_ROLE` (`USER_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `SYS_MENU`;
CREATE TABLE `SYS_MENU` (
  `MENU_ID` INT(6) NOT NULL AUTO_INCREMENT,
  `MENU_NAME` VARCHAR(40) NOT NULL,
  `MENU_URL` VARCHAR(100) NOT NULL DEFAULT '#',
  `MENU_PARENT_ID` INT(6) DEFAULT NULL,
  `MENU_ORDER` INT NOT NULL,
  `MENU_ICON` VARCHAR(80) DEFAULT NULL,
  `MENU_TYPE` VARCHAR(20) DEFAULT NULL,
  `MENU_TARGET` VARCHAR(20) DEFAULT NULL,
  `MENU_CSS` VARCHAR(20) DEFAULT NULL,
  `MENU_LEVEL` INT,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `SYS_ROLE_MENU`;
CREATE TABLE `SYS_ROLE_MENU` (
  `ROLE_ID` INT(6) NOT NULL,
  `MENU_ID` INT(6) NOT NULL,
  UNIQUE KEY `UNIQ_ROLE_MENU` (`MENU_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `SYS_LOGIN_RECORD`;
CREATE TABLE `SYS_LOGIN_RECORD` (
  `RECORD_ID` INT(12) NOT NULL AUTO_INCREMENT,
  `USER_ID` INT(10) NOT NULL,
  `LOGIN_TIME` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `LOGIN_IP` VARCHAR(15) DEFAULT NULL,
  `LOGIN_DEVICE` VARCHAR(50) DEFAULT NULL,
  `LOGIN_CODE` INT(2),
  `LOGIN_STATUS` INT(2),
  PRIMARY KEY (`RECORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





--客户基本信息
DROP TABLE IF EXISTS `DATA_CUSTOMER`;
CREATE TABLE `DATA_CUSTOMER` (
  `CUSTOMER_ID` VARCHAR(12) NOT NULL,
  `CUSTOMER_ID_TYPE` INT DEFAULT 0,
  `CUSTOMER_IDCARD` VARCHAR(18) NOT NULL,
  `BUSINESS_LICENSE_NO` VARCHAR(15),
  `ORGANIZATION_CODE` VARCHAR(18),
  `CUSTOMER_NAME` VARCHAR(20),
  `ID_VALIDITY` INT,
  `ID_EXPIRY_DATE` DATE,
  `CUSTOMER_TYPE` INT,
  `ENGLISH_NAME` VARCHAR(20),
  `TAX_NO_COUNTRY` VARCHAR(20),
  `TAX_NO_LOCAL` VARCHAR(20),
  `REGISTER_DATE` DATE,
  `REGISTER_CURRENCY` VARCHAR(4),
  `REGISTER_CAPITAL` DECIMAL(15,2),
  `CAPITAL_PERCENT` DOUBLE,
  `OPERATE_COUNTRY` VARCHAR(30),
  `REGISTER_COUNTRY` VARCHAR(30),
  `OPERATE_PROVINCE` VARCHAR(30),
  `REGISTER_PROVINCE` VARCHAR(30),
  `REGISTER_TYPE` INT,
  `REGISTER_NO` VARCHAR(20),
  `CORPORATE_CODE` VARCHAR(20),
  `ENTERPRISE_NATURE` VARCHAR(30),
  `ENTERPRISE_SCALE` VARCHAR(20),
  `BUSINESS_SCOPE` VARCHAR(30),
  `NUM_OF_EMPLOYEES` INT,
  `INDUSTRY_TYPE` VARCHAR(20),
  `OWNER_CLASS_CODE` VARCHAR(20),
  `COMPETENT_DEPARTMENT` VARCHAR(30),
  `IPO_COMPANY` INT,
  `LEADER_TYPE` INT,
  `LEADER_NAME` VARCHAR(20),
  `LEADER_ID_TYPE` INT,
  `LEADER_IDCARD` VARCHAR(18),
  `LEADER_ID_TERM` INT,
  `LEADER_COUNTRY` VARCHAR(20),
  `FINANCER` VARCHAR(20),
  `PROXY_NAME` VARCHAR(20),
  `PROXY_ID_TYPE` INT,
  `PROXY_IDCARD` VARCHAR(18),
  `PROXY_START_DATE` DATE,
  `PROXY_END_DATE` DATE,
  `AUTHORIZER_NAME` VARCHAR(20),
  `AUTHORIZER_ID_TYPE` INT,
  `AUTHORIZER_IDCARD` VARCHAR(18),
  `AUTHORIZER_ID_TERM` INT,
  `AUTHORIZER_COUNTRY` VARCHAR(20),
  `CONTROL_TYPE` VARCHAR(10),
  `OPERATE_AREA_MEASURE` DOUBLE,
  `OPERATE_AREA_OWNER` VARCHAR(20),
  `IEPORT_RIGHTS` INT,
  `IS_BASIC_CUSTOMER` INT,
  `BASIC_DEPOSIT_ACCOUNT` VARCHAR(32),
  `BASIC_ACCOUNT_BANK` VARCHAR(12),
  `BASIC_CHECK_NO` VARCHAR(20),
  `OPEN_PERMIT_NO` VARCHAR(20),
  `DEPOSIT_NO` VARCHAR(20),
  `DEPOSIT_CHECK_DATE` DATE,
  `OPEN_BANK_NO` VARCHAR(12),
  `MAINTEN_STATUS` INT,
  `ACCOUNT_MANAGE_NO` VARCHAR(20),
  `GROUP_SIGN_FLAG` INT,
  `IS_REALATION_CUSTOMER` INT,
  `IS_COOPERATION_CUSTOMER` INT,
  `IS_ALLOW_CUSTOMER` INT,
  `IS_GROUP_CUSTOMER` INT,
  `CUSTOMER_LEVEL` VARCHAR(5),
  `CREDIT_LEVEL` VARCHAR(5),
  `NEW_RANK` VARCHAR(5),
  `IMPORTANTE_LEVEL` VARCHAR(5),
  `INNER_CONTROL_FLAG` VARCHAR(5),
  `QUOTA_ALLOW_FLAG` VARCHAR(5),
  `CUST_CREDIT_POLICY` VARCHAR(20),
  `CREDIT_POLICY_TYPE` VARCHAR(20),
  `FIRST_CREDIT_DATE` DATE,
  `IS_NO_WRONG_ASSET` INT,
  `MY_BAD_RECORD` VARCHAR(20),
  `HE_BAD_RECORD` VARCHAR(20),
  `IS_LOOK_PASS_FLAG` INT,
  `CUSTOMER_STATUS` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--账户基本信息
DROP TABLE IF EXISTS `DATA_ACCOUNT`;
CREATE TABLE `DATA_ACCOUNT` (
  `ACCOUNT_NO` VARCHAR(20) NOT NULL UNIQUE,
  `SUB_NO` VARCHAR(20) NOT NULL,
  `ACCOUNT_NAME` VARCHAR(20),
  `INSTITUTE` VARCHAR(15),
  `BALANCE` DECIMAL(15,2),
  `GROUP_SIGN_FLAG` INT(2),
  `ACCOUNT_STATUS` INT(2),
  `OPEN_DATE` DATE,
  `TERM_DEPOSIT` VARCHAR(20),
  `END_DATE` DATE,
  `ACCOUNT_TYPE` INT,
  `ACCOUNT_MANAGE` VARCHAR(20),
  `AGREE_DEPOSIT_SIGN` VARCHAR(20),
  `REGULAR_BOND_SIGN` VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--联系地址及电子联系信息
DROP TABLE IF EXISTS `DATA_CONTACT`;
CREATE TABLE `DATA_CONTACT` (
  	ADDRESS		VARCHAR(50) ,	
	ZIPCODE		VARCHAR(6)  ,
	COUNTRY		VARCHAR(20) ,
	PROVINCE	VARCHAR(20) ,
	CITY		VARCHAR(20) ,
	AREA		VARCHAR(30) ,
	STREET		VARCHAR(30) ,
	AREACODE	VARCHAR(5)  ,
	TELPHONE1	VARCHAR(11) ,
	TELPHONE2	VARCHAR(11) ,
	FAX			VARCHAR(11) ,
	PHONE		VARCHAR(11) ,
	EMAIL		VARCHAR(50) ,
	NETADDRESS	VARCHAR(60)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--贷款账户信息
DROP TABLE IF EXISTS `DATA_LOAN_ACCOUNT`;
CREATE TABLE `DATA_DEPOSIT_ACCOUNT` (
	yhbm	    varchar(12)  ,
	dkzh	    varchar(32)  ,
	dkffh	    varchar(32)  ,
	dkhth	    varchar(32)  ,
	jjh	    varchar(32)  ,
	dklx	    int          ,
	dkzlx	    int          ,
	dkkyzt	    int          ,
	dkbgrq	    date         ,
	jkkhh	    varchar(32)  ,
	dkhhh	    varchar(12)  ,
	dkksrq	    date         ,
	dkdqrq	    date         ,
	bzdm	    varchar(5)   ,
	dkje	    decimal(15,4),
	dkye	    decimal(15,4),
	wdqbj	    decimal(15,4),
	hkfs	    int          ,
	lxlljzdm    varchar(5)   ,
	lxlcbfd	    double       ,
	lxlcbfb	    double       ,
	lxgdllv	    double       ,
	dkdqllv	    double       ,
	sqfx	    int          ,
	sqfl	    int          ,
	sqfxfl	    int          ,
	sqflfl	    int          ,
	cybtllv	    int          ,
	fxlcbfd	    double       ,
	fxlcbfb	    double       ,
	fxgdllv	    double       ,
	fxyxllv	    double       ,
	fllljzdm    varchar(5)   ,
	fllcbfd	    double       ,
	fllcbfb	    double       ,
	flgdllv	    double       ,
	flyxllv	    double       ,
	llbgqyfs    varchar(1)   ,
	llbdplv	    varchar(5)   ,
	llbdrq	    date         ,
	jxplv	    varchar(5)   ,
	scjxrq	    date         ,
	jsbhrq	    date         ,
	xcjxrq	    date         ,
	xchbrq	    date         ,
	nbffztbz    varchar(1)   ,
	dkhxbz	    int          ,
	dkhxrq	    date         ,
	sfzdkk	    int          ,
	zdkkzh	    varchar(32)  ,
	dsfffzhxx   varchar(32)  ,
	wtrjszh	    varchar(32)  ,
	wtrwtckzh   varchar(32)  ,
	khjl	    varchar(30)  ,
	klgy	    varchar(12)  ,
	dkjxr	    date         ,
	qgje	    decimal(15,4),
	dbfs	    int          ,
	jqrq	    date         
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--贷款合同信息
DROP TABLE IF EXISTS `DATA_LOAN_CONTRACT`;
CREATE TABLE `DATA_DEPOSIT_CONTRACT` (
	zhtbh		varchar(30)  , 
	sxedbh		varchar(20)  , 
	zzhtbh		varchar(30)  , 
	biz		varchar(3)   , 
	htje		decimal(15,4), 
	htqx		int          , 
	qxdw		varchar(30)  , 
	hlv		double       , 
	qyrq		date         , 
	jbjg		varchar(30)  , 
	jbrbh		varchar(10)  , 
	dkytlx		varchar(10)  , 
	sxpzdm		varchar(10)  , 
	htxzdm		varchar(5)   , 
	htzt		int          , 
	htlbdm		varchar(5)   , 
	htzzfs		varchar(5)   , 
	zzrq		date         , 
	sfdj		int          , 
	zqlxdm		varchar(5)   , 
	sfyjbqbm	int          , 
	wjfljg		varchar(10)  , 
	dfxlbdm		varchar(5)   , 
	dbfs		varchar(5)   , 
	yqdklx		varchar(10)  , 
	blywlx		varchar(10) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--贷款合同详细信息
DROP TABLE IF EXISTS `DATA_LOAN_CONTRACT_DETAIL`;
CREATE TABLE `DATA_DEPOSIT_CONTRACT_DETAIL` (
	sxpzdm       varchar(10)    , 		
	sfkxh	     int            ,
	jine	     decimal(15,4)  ,
	thye	     decimal(15,4)  ,
	bzdm	     varchar(3)     ,
	qix	     int            ,
	hkfs	     varchar(10)    ,
	qsrq	     date           ,
	dqrq	     date           ,
	sfjjfkfdk    int            ,
	sfdfx	     int            ,
	fkzhzh	     varchar(20)    ,
	hkzhzh	     varchar(20)    ,
	fkzhhm	     varchar(20)    ,
	hkzhhm	     varchar(20)    ,
	blyfzged     decimal(15,4)  ,
	blyfyxq	     int            ,
	zrsdkye	     decimal(15,4)  ,
	sfyehg	     int            ,
	txhpzl	     varchar(5)     ,
	txhpzs	     int            ,
	txhpje	     decimal(15,4)  ,
	txzl	     varchar(5)     
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--贷款五级分类信息
DROP TABLE IF EXISTS `DATA_LOAN_FIVE_TIER`;
CREATE TABLE `DATA_LOAN_FIVE_TIER` (
	dkbh        varchar(20)    ,
	dkbj	    decimal(15,4)  ,
	yqje	    decimal(15,4)  ,
	tqbje	    decimal(15,4)  ,
	bnqx	    decimal(15,4)  ,
	bjyqqsrq    date           ,
	bqjgdm	    varchar(12)    ,
	bqrdrq	    date           ,
	bqfldm	    varchar(20)    ,
	sqfldm	    varchar(20)    
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--存款账户信息
DROP TABLE IF EXISTS `DATA_DEPOSIT_ACCOUNT`;
CREATE TABLE `DATA_DEPOSIT_ACCOUNT` (
	zzh            varchar(20)    ,
	khhh	       varchar(12)    ,
	zhzh	       varchar(20)    ,
	zhbz	       varchar(3)     ,
	khh			   varchar(12)    ,
	zhzt	       varchar(1)     ,
	zhlx	       varchar(5)     ,
	zhsx	       varchar(10)    ,
	pzlx	       varchar(5)     ,
	pzqz	       varchar(10)    ,
	pzhm	       varchar(20)    ,
	zqfs	       varchar(1)     ,
	khrq	       date           ,
	xhrq	       date           ,
	gyid	       varchar(10)    ,
	khjlid	       varchar(10)    ,
	zhztxgrq       date           ,
	scjyrq	       date           ,
	zhcye	       decimal(15,4)  ,
	zhhye	       decimal(15,4)  ,
	zhjs	       double         ,
	dfzhjcllv      double         ,
	dfzhkzllv      double         ,
	jtrdfyflx      double         ,
	dfyflxjsz      double         ,
	llbdrlxtz      double         ,
	dflxtzjsz      double         ,
	gdje	       decimal(15,4)  ,
	zhmc	       varchar(20)    ,
	hzjbh	       varchar(20)    ,
	tcbz	       varchar(5)     ,
	tdbz	       varchar(5)     ,
	xdckbz	       varchar(5)     ,
	kssj	       date           ,
	dqykhcrrq      date           ,
	ckqx	       int            ,
	ckqxlx	       varchar(5)     ,
	zdzc	       varchar(5)     ,
	drlx	       decimal(15,4)  ,
	drllv	       decimal(15,4)  ,
	yskhrq	       date           ,
	zhxkzh	       varchar(20)    ,
	yhtzzhbz       varchar(5)     ,
	yhtzzhjxbz     varchar(5)     ,
	lxrzzh	       varchar(20)    ,
	dqr	       date           ,
	dfgzbj	       varchar(5)     ,
	yhbz	       varchar(5)     
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--存款账户流水信息
DROP TABLE IF EXISTS `DATA_DEPOSIT_FLOW`;
CREATE TABLE `DATA_DEPOSIT_FLOW` (
	jylsh       varchar(12)   , 
	zh	    varchar(20)   ,
	zhbz	    varchar(3)    ,
	jyrq	    date          ,
	jyh	    varchar(12)   ,
	gyid	    varchar(10)   ,
	jylx	    int           ,
	rzrq	    date          ,
	czjylx	    int           ,
	czrq	    date          ,
	czggbz	    varchar(3)    ,
	jyje	    decimal(15,4) ,
	jdbz	    int           ,
	sjc	    timestamp     ,
	bz	    varchar(3)    ,
	qcye	    decimal(15,4) ,
	jyms	    varchar(20)   ,
	ckh	    varchar(10)   ,
	shgy	    varchar(10)   ,
	pzgy	    varchar(10)   ,
	dfzh	    varchar(20)   ,
	bz	    varchar(30)   ,
	yhbz	    varchar(10)   
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--定期账户流水信息
DROP TABLE IF EXISTS `DATA_FIXED_FLOW`;
CREATE TABLE `DATA_FIXED_FLOW` (
	zhzh         varchar(20)     ,
	xh	     varchar(10)     ,
	zhkhrq	     date            ,
	dqrq	     date            ,
	jyrq	     date            ,
	jylx	     varchar(2)      ,
	bj	     decimal(15,4)   ,
	jyje	     decimal(15,4)   ,
	zhjcllv	     decimal(15,4)   ,
	fdllv	     decimal(15,4)   ,
	lxje	     decimal(15,4)   ,
	sj	     decimal(15,4)   ,
	gyid	     varchar(10)     ,
	yhbz	     varchar(10)     
) ENGINE=InnoDB DEFAULT CHARSET=utf8;









--客户基本信息
DROP TABLE IF EXISTS `cust_base_account`;
CREATE TABLE `cust_base_account` (
	cust_id               varchar(10)   ,
	cert_type	      varchar(10)   ,
	cert_no		      varchar(20)   ,
	govn_cert_no	      varchar(30)   ,
	company_no	      varchar(10)   ,
	party_name	      varchar(80)   ,
	cert_hld_date	      varchar(20)   ,
	cert_end_date	      varchar(8)    ,
	cust_type	      varchar(20)   ,
	cust_en_name	      varchar(60)   ,
	agent_cust_name	      varchar(60)   ,
	agent_paper_type      varchar(2)    ,
	agent_paper_no	      varchar(22)   ,
	is_bas_cust	      char(1)       ,
	bssav_acc_no	      varchar(30)   ,
	bsopen_acc_no	      varchar(9)    ,
	bas_open_permit_no    varchar(18)   ,
	acct_lic_no	      varchar(30)   ,
	open_acc_no	      varchar(9)    ,
	rm_team_no	      varchar(21)   ,
	cust_status	      varchar(2)    ,
	addr_type	      varchar(10)   ,
	post_cd		      varchar(6)    ,
	nation		      varchar(80)   ,
	province	      varchar(80)   ,
	city		      varchar(80)   ,
	country		      varchar(80)   ,
	addr_line	      varchar(160)  ,
	area_no		      varchar(6)    ,
	phone_no	      varchar(36)   ,
	ext_no		      varchar(6)    ,
	fax_no		      varchar(36)   ,
	mobile_no	      varchar(36)   ,
	email_addr	      varchar(100)  ,
	web_sit		      varchar(100)  ,
	PRIMARY KEY (cust_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--存款账户基本信息
DROP TABLE IF EXISTS `deposit_base_account`;
CREATE TABLE `deposit_base_account` (
	base_acct_no              varchar(50)  , 
	open_bank_no		  varchar(15)  ,
	acct_no			  varchar(32)  ,
	ccy			  varchar(3)   ,
	cust_id			  varchar(30)  ,
	acct_status		  varchar(1)   ,
	acct_type		  varchar(3)   ,
	doc_type		  varchar(3)   ,
	voucher_no		  varchar(20)  ,
	withdrawal_type		  varchar(1)   ,
	acct_open_date		  date         ,
	acct_close_date		  date         ,
	user_id			  varchar(30)  ,
	officer_id		  varchar(8)   ,
	status_chg_date		  date         ,
	last_tran_date		  date         ,
	actual_bal		  decimal(15,2),
	agg_bal			  decimal(15,2),
	cr_acct_level_int_rate	  decimal(15,4),
	cr_spread_rate		  decimal(15,4),
	acct_name		  varchar(50)  ,
	deposit_term 		  varchar(3)   ,	   
	cr_third_party_acct	  varchar(32)  ,	   
	maturity_date		  date         ,	   
	PRIMARY KEY (base_acct_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;						   
						   
--贷款账户基本信息
DROP TABLE IF EXISTS `loan_base_account`;
CREATE TABLE `loan_base_account` (
	loan_no            varchar(50)   ,
	contract	   varchar(19)   ,
	cmisloan_no	   varchar(50)   ,
	loan_type	   varchar(3)    ,
	cb_status_change   date          ,
	borrower	   varchar(12)   ,
	book_branch	   varchar(10)    ,
	start_date	   date          ,
	mature_date	   date          ,
	ccy		   varchar(3)    ,
	loan_amt	   decimal(15,2) ,
	outstanding	   decimal(15,2) ,
	os_less_past_due   decimal(15,2) ,
	repay_mode	   varchar(2)    ,
	int_rate	   decimal(15,4) ,
	pri_penalty	   varchar(1)    ,
	int_penalty	   varchar(1)    ,
	od_pri_penalty	   varchar(1)    ,
	od_int_penalty	   varchar(1)    ,
	pri_plty_rate	   decimal(15,4) ,
	int_plty_rate	   decimal(15,4) ,
	int_appl_type	   varchar(1)    ,
	roll_freq	   varchar(2)    ,
	roll_date	   date          ,
	int_repay_freq	   varchar(2)    ,
	last_int_rep_date  date          ,
	next_int_rep_date  date          ,
	next_pri_rep_date  date          ,
	reversed_matured   varchar(1)    ,
	write_off	   varchar(1)    ,
	write_off_date	   date          ,
	auto_rec_gen	   varchar(1)    ,
	base_acct_no_auto  varchar(50)   ,
	acct_exec	   varchar(50)   ,
	user_id		   varchar(50)   ,
	int_repay_day	   int           ,
	stage_amt	   decimal(15,2) ,
	stage_capital	   decimal(15,2) ,
	stage_inter	   decimal(15,2) ,
	undo_amt	   decimal(15,2) ,
	undo_capital	   decimal(15,2) ,
	undo_inter	   decimal(15,2) ,
	pay_off_date	   date          ,
	PRIMARY KEY (loan_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--贷款账户基本信息
DROP TABLE IF EXISTS `send_message`;
CREATE TABLE `send_message` (
	`send_id` 		int(6) not null auto_increment,
	`send_no`		varchar(11) not null,
	`send_msg`		varchar(256) not null,
	`send_time`		datetime not null default current_timestamp,
	`send_state`	int default 0,
	`send_reason`	varchar(256),
	`send_chnl`		varchar(5),
	`send_type`		int,
	`send_role`		varchar(32),
	`send_count`	int,	
	PRIMARY KEY (send_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
