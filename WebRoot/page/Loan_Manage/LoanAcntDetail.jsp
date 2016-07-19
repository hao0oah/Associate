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
			var t1 = location;
			var URL = t1.toString();
			var data = URL.substring(URL.indexOf("?")+1);
			//alert(data);
			var obj = JSON.parse(data);
			$("#loan_no").text(obj.loan_no);
			$("#contract").text(obj.contract);
			$("#cmisloan_no").text(obj.cmisloan_no);
			$("#loan_type").text(obj.loan_type);
			$("#cb_status_change").text(obj.cb_status_change);
			$("#borrower").text(obj.borrower);
			$("#book_branch").text(obj.book_branch);
			$("#start_date").text(obj.start_date);
			$("#mature_date").text(obj.mature_date);
			$("#ccy").text(obj.ccy);
			$("#loan_amt").text(obj.loan_amt);
			$("#outstanding").text(obj.outstanding);
			$("#os_less_past_due").text(obj.os_less_past_due);
			$("#repay_mode").text(obj.repay_mode);
			$("#int_rate").text(obj.int_rate);
			$("#pri_penalty").text(obj.pri_penalty);
			$("#int_penalty").text(obj.int_penalty);
			$("#od_pri_penalty").text(obj.od_pri_penalty);
			$("#od_int_penalty").text(obj.od_int_penalty);
			$("#pri_plty_rate").text(obj.pri_plty_rate);
			$("#int_plty_rate").text(obj.int_plty_rate);
			$("#int_appl_type").text(obj.int_appl_type);
			$("#roll_freq").text(obj.roll_freq);
			$("#roll_date").text(obj.roll_date);
			$("#int_repay_freq").text(obj.int_repay_freq);
			$("#last_int_rep_date").text(obj.last_int_rep_date);
			$("#next_int_rep_date").text(obj.next_int_rep_date);
			$("#next_pri_rep_date").text(obj.next_pri_rep_date);
			$("#reversed_matured").text(obj.reversed_matured);
			$("#write_off").text(obj.write_off);
			$("#write_off_date").text(obj.write_off_date);
			$("#auto_rec_gen").text(obj.auto_rec_gen);
			$("#base_acct_no_auto").text(obj.base_acct_no_auto);
			$("#acct_exec").text(obj.acct_exec);
			$("#user_id").text(obj.user_id);
			$("#int_repay_day").text(obj.int_repay_day);
			$("#stage_amt").text(obj.stage_amt);
			$("#stage_capital").text(obj.stage_capital);
			$("#stage_inter").text(obj.stage_inter);
			$("#undo_amt").text(obj.undo_amt);
			$("#undo_capital").text(obj.undo_capital);
			$("#undo_inter").text(obj.undo_inter);
			$("#pay_off_date").text(obj.pay_off_date);
		}
	</script>
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="page/style/images/title_arrow.gif"/> 贷款账户详细信息
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
                        <td width="150">贷款账号</td>
                        <td id="loan_no"></td>
                    </tr>
                    <tr>
                        <td>贷款合同号</td>
                        <td id="contract"></td>
                    </tr>
                    <tr>
                        <td>借据号</td>
                        <td  id="cmisloan_no"></td>
                    </tr>
					<tr>
                        <td>贷款类型</td>
                        <td id="loan_type"></td>
                    </tr>
					<tr>
                        <td>贷款状态变更日期</td>
                        <td id="cb_status_change"></td>
                    </tr>
                    <tr>
                        <td>借款人客户号</td>
                        <td id="borrower"></td>
                    </tr>
                    <tr>
                        <td>贷款行行号</td>
                        <td id="book_branch"></td>
                    </tr>
                    <tr>
                        <td>贷款开始日期</td>
                        <td id="start_date"></td>
                    </tr>
                    <tr>
                        <td>贷款到期日期</td>
                        <td id="mature_date"></td>
                    </tr>
                    <tr>
                        <td>币种代码</td>
                        <td id="ccy"></td>
                    </tr>
                    <tr>
                        <td>贷款金额</td>
                        <td id="loan_amt"></td>
                    </tr>
                    <tr>
                        <td>贷款余额</td>
                        <td id="outstanding"></td>
                    </tr>
                    <tr>
                        <td>未到期本金</td>
                        <td id="os_less_past_due"></td>
                    </tr>
                    <tr>
                        <td>还款方式</td>
                        <td id="repay_mode"></td>
                    </tr>
                    <tr>
                        <td>贷款生效的当前利率</td>
                        <td id="int_rate"></td>
                    </tr>
                    <tr>
                        <td>是否收取罚息</td>
                        <td id="pri_penalty"></td>
                    </tr>
                    <tr>
                        <td>是否收取复利</td>
                        <td id="int_penalty"></td>
                    </tr>
                    <tr>
                        <td>是否收取罚息的复利</td>
                        <td id="od_pri_penalty"></td>
                    </tr>
                    <tr>
                        <td>是否收取复利的复利</td>
                        <td id="od_int_penalty"></td>
                    </tr>
                    <tr>
                        <td>贷款罚息的有效利率</td>
                        <td id="pri_plty_rate"></td>
                    </tr>
                    <tr>
                        <td>贷款复利的有效利率</td>
                        <td id="int_plty_rate"></td>
                    </tr>
                    <tr>
                        <td>利率变更启用方式</td>
                        <td id="int_appl_type"></td>
                    </tr>
                    <tr>
                        <td>利率变动频率</td>
                        <td id="roll_freq"></td>
                    </tr>
                    <tr>
                        <td>利率变动日期</td>
                        <td id="roll_date"></td>
                    </tr>
                    <tr>
                        <td>结息频率</td>
                        <td id="int_repay_freq"></td>
                    </tr>
                    <tr>
                        <td>上一次结息的日期</td>
                        <td id="last_int_rep_date"></td>
                    </tr>
                    <tr>
                        <td>下次结息日期</td>
                        <td id="next_int_rep_date"></td>
                    </tr>
                    <tr>
                        <td>下一个还本日期</td>
                        <td id="next_pri_rep_date"></td>
                    </tr>
                    <tr>
                        <td>内部发放状态标志</td>
                        <td id="reversed_matured"></td>
                    </tr>
                    <tr>
                        <td>贷款是否核销的标记</td>
                        <td id="write_off"></td>
                    </tr>
                    <tr>
                        <td>贷款核销日期</td>
                        <td id="write_off_date"></td>
                    </tr>
                    <tr>
                        <td>是否自动扣款</td>
                        <td id="auto_rec_gen"></td>
                    </tr>
                    <tr>
                        <td>自动扣款帐号</td>
                        <td id="base_acct_no_auto"></td>
                    </tr>
                    <tr>
                        <td>客户经理</td>
                        <td id="acct_exec"></td>
                    </tr>
                    <tr>
                        <td>开立柜员</td>
                        <td id="user_id"></td>
                    </tr>
                    <tr>
                        <td>贷款的结息日</td>
                        <td id="int_repay_day"></td>
                    </tr>
                    <tr>
                        <td>期供金额</td>
                        <td id="stage_amt"></td>
                    </tr>
                    <tr>
                        <td>期供本金</td>
                        <td id="stage_capital"></td>
                    </tr>
                    <tr>
                        <td>期供利息</td>
                        <td id="stage_inter"></td>
                    </tr>
                    <tr>
                        <td>应收未收金额</td>
                        <td id="undo_amt"></td>
                    </tr>
                    <tr>
                        <td>应收未收本金</td>
                        <td id="undo_capital"></td>
                    </tr>
                    <tr>
                        <td>应收未收利息</td>
                        <td id="undo_inter"></td>
                    </tr>
                    <tr>
                        <td>结清日期</td>
                        <td id="pay_off_date"></td>
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
	验证规则：<br />
	1，可以修改自已的头像，在右侧是头像的预览。<br />
</div>

</body>
</html>
