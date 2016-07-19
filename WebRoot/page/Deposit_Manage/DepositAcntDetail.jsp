<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%= basePath%>">
	<title>存款账户详细信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- 
    <script type="text/javascript" src="page/script/jquery.js"></script>
    <script type="text/javascript" src="page/script/pageCommon.js" charset="utf-8"></script>
    <script type="text/javascript" src="page/script/PageUtils.js" charset="utf-8"></script>
    <script type="text/javascript" src="page/script/DemoData.js" charset="utf-8"></script>
	<script type="text/javascript" src="page/script/DataShowManager.js" charset="utf-8"></script>
	 <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.8.2/jquery.min.js"></script>
	 -->
	<script type="text/javascript" src="page/script/jquery.js"></script>
    <script type="text/javascript" src="page/script/jquery.min.js"></script>
	<script type="text/javascript" src="page/script/DepositorDetail.js" charset="utf-8"></script>
	<script type="text/javascript" src="page/script/public.js" charset="utf-8"></script>
	<script type="text/javascript" src="page/script/json2.js" charset="utf-8"></script>
    <link type="text/css" rel="stylesheet" href="page/style/blue/pageCommon.css" />
    <script type="text/javascript">
		window.onload = function() {
			var URL = location.toString();
			var data = URL.substring(URL.indexOf("?")+1);
			//alert(data);
			var obj = JSON.parse(data);
			$("#base_acct_no").text(obj.base_acct_no);
			$("#open_bank_no").text(obj.open_bank_no);
			$("#acct_no").text(obj.acct_no);
			$("#ccy").text(obj.ccy);
			$("#cust_id").text(obj.cust_id);
			$("#acct_status").text(obj.acct_status);
			var tmp = "未知";
			switch(obj.acct_type){
			case 'A': tmp = "活动"
			case 'C': tmp = "销户"
			case 'D': tmp = "睡眠户"
			case 'S': tmp = "久悬户"
			case 'N': tmp = "新建"
			case 'P': tmp = "待激活"
			}
			$("#acct_type").text(tmp);
			$("#doc_type").text(obj.doc_type);
			$("#voucher_no").text(obj.voucher_no);
			tmp = "未知";
			switch(obj.withdrawal_type){
			case 'P': tmp = "密码"
			case 'S': tmp = "印鉴"
			case 'B': tmp = "密码和印鉴"
			case 'N': tmp = "无支取方式"
			}
			$("#withdrawal_type").text(tmp);
			$("#acct_open_date").text(obj.acct_open_date);
			$("#acct_close_date").text(obj.acct_close_date);
			$("#user_id").text(obj.user_id);
			$("#officer_id").text(obj.officer_id);
			$("#status_chg_date").text(obj.status_chg_date);
			$("#last_tran_date").text(obj.last_tran_date);
			$("#actual_bal").text(obj.actual_bal);
			$("#agg_bal").text(obj.agg_bal);
			$("#cr_acct_level_int_rate").text(obj.cr_acct_level_int_rate);
			$("#cr_spread_rate").text(obj.cr_spread_rate);
			$("#acct_name").text(obj.acct_name);
			$("#deposit_term").text(obj.deposit_term);
			$("#cr_third_party_acct").text(obj.cr_third_party_acct);
			$("#maturity_date").text(obj.maturity_date);
		}
	</script>
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="page/style/images/title_arrow.gif"/> 存款账户详细信息
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>
    <form  enctype="multipart/form-data">
        <div class="ItemBlock_Title1"><!-- 信息说明<DIV CLASS="ItemBlock_Title1">
        	<IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="page/style/blue/images/item_point.gif" /> 个人信息 </DIV>  -->
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
					<tr>
                        <td width="150">主账号</td>
                        <td id="base_acct_no"></td>
                    </tr>
                    <tr>
                        <td>开户行号</td>
                        <td id="open_bank_no"></td>
                    </tr>
                    <tr>
                        <td>账户账号</td>
                        <td  id="acct_no"></td>
                    </tr>
					<tr>
                        <td>账户币种</td>
                        <td id="ccy"></td>
                    </tr>
					<tr>
                        <td>客户号</td>
                        <td id="cust_id"></td>
                    </tr>
                    <tr>
                        <td>账户状态</td>
                        <td id="acct_status"></td>
                    </tr>
                    <tr>
                        <td>账户类型</td>
                        <td id="acct_type"></td>
                    </tr>
                    <tr>
                        <td>凭证类型</td>
                        <td id="doc_type"></td>
                    </tr>
                    <tr>
                        <td>凭证号码</td>
                        <td id="voucher_no"></td>
                    </tr>
                    <tr>
                        <td>支取方式</td>
                        <td id="withdrawal_type"></td>
                    </tr>
                    <tr>
                        <td>开户日期</td>
                        <td id="acct_open_date"></td>
                    </tr>
                    <tr>
                        <td>销户日期</td>
                        <td id="acct_close_date"></td>
                    </tr>
                    <tr>
                        <td>柜员ID</td>
                        <td id="user_id"></td>
                    </tr>
                    <tr>
                        <td>客户经理ID</td>
                        <td id="officer_id"></td>
                    </tr>
                    <tr>
                        <td>账户状态修改日期</td>
                        <td id="status_chg_date"></td>
                    </tr>
                    <tr>
                        <td>上次交易日期</td>
                        <td id="last_tran_date"></td>
                    </tr>
                    <tr>
                        <td>当前余额</td>
                        <td id="actual_bal"></td>
                    </tr>
                    <tr>
                        <td>账户积数</td>
                        <td id="agg_bal"></td>
                    </tr>
                    <tr>
                        <td>贷方账户基础利率</td>
                        <td id="cr_acct_level_int_rate"></td>
                    </tr>
                    <tr>
                        <td>贷方账户扩展利率</td>
                        <td id="cr_spread_rate"></td>
                    </tr>
                    <tr>
                        <td>账户名称</td>
                        <td id="acct_name"></td>
                    </tr>
                    <tr>
                        <td>存款期限</td>
                        <td id="deposit_term"></td>
                    </tr>
                    <tr>
                        <td>利息入账账号</td>
                        <td id="cr_third_party_acct"></td>
                    </tr>
                    <tr>
                        <td>到期日</td>
                        <td id="maturity_date"></td>
                    </tr>
                </table>
            </div>
        </div>
       
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <!-- <input type="image" src="page/style/images/save.png"/> -->
            <a href="javascript:history.go(-1);"><img src="page/style/images/goBack.png"/></a>
        </div>
    </form>
</div>

<div class="Description">
	说明：<br />
	1.存款账户的详细信息。<br />
</div>

</body>
</html>
