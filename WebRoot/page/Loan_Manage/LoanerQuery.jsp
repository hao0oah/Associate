<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%= basePath%>">
    <title>存款人查询</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!-- 
    <script type="text/javascript" src="page/script/jquery.js"></script>
	<script type="text/javascript" src="page/script/pageCommon.js" charset="utf-8"></script>
    <script type="text/javascript" src="page/script/PageUtils.js" charset="utf-8"></script>
    <script type="text/javascript" src="../script/DemoData.js" charset="utf-8"></script>
	<script type="text/javascript" src="../script/DataShowManager.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.8.2/jquery.min.js"></script>
	 -->
	<script type="text/javascript" src="page/script/jquery.js"></script>
    <script type="text/javascript" src="page/script/jquery.min.js"></script>
	<script type="text/javascript" src="page/Loan_Manage/LoanerQuery.js" charset="utf-8"></script>
	<script type="text/javascript" src="page/script/public.js" charset="utf-8"></script>
    <link type="text/css" rel="stylesheet" href="page/style/blue/pageCommon.css" />
    
</head>
<body>

<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="page/style/images/title_arrow.gif"/> 存款人查询
        </div>
        <div id="Title_End"></div>
    </div>
</div>


<div id="QueryArea">
	<div style="height: 30px">
		<!-- <form action="#" id="queryForm"> -->
		<table border=0 cellspacing=3 cellpadding=5>
			<tr>
				<td>账号：</td>
				<td>
					<input type="text" id="zhzh">
				</td>
				<td>客户号：</td>
				<td>
					<input type="text" id="khh">
				</td>
				<td>身份证号：</td>
				<td>
					<input type="text" id="hzjbh">
				</td>
				<td>姓名：</td>
				<td>
					<input type="text" id="hzjbh">
				</td>
				<!-- 
				<td><select name="arg1" class="SelectStyle">
						<option value="">查看全部模板</option>
						<option value="0">领款单</option>
						<option value="10">工作报告</option>
						<option value="13">设备采购单</option>
						<option value="21">员工请假单</option>
						<option value="22">加班申请</option>
					</select>
				</td>
				<td><select name="status" class="SelectStyle">
						<option value="">查看全部状态</option>
						<option value="1">审批中</option>
						<option value="2">未通过</option>
						<option value="3">已通过</option>
					</select>
				</td>
				 -->
				<td><input id="querySubmit" type="IMAGE" src="page/style/blue/images/button/query.PNG"/></td>
			</tr>
		</table>
		<!-- </form> -->
	</div>
</div>

<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle">
        <!-- 表头-->
        <thead>
            <tr align="CENTER" valign="MIDDLE" id="TableTitle">
            	<td width="50">序号</td>
				<td width="120">姓名</td>
				<td width="180">客户号</td>
				<td width="220">账号</td>
				<td width="130">身份证号</td>
				<td width="195">联系方式</td>
				<td width="130">贷款情况</td>
				
				<td>相关操作</td>
			</tr>
		</thead>
		<!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="formList">
			<tr class="TableDetail1 template">
				<td><a href="#">1</a></td>
				<td><a href="#">9238712384702984</a></td>
				<td><a href="#">9238712</a></td>
				<td>孔明常&nbsp;</td>
				<td>18237403928479&nbsp;</td>
				<td>1000.00</td>
				<td>2016-02-02&nbsp;</td>
				<td><a href="showForm.html">查看申请信息</a>
					<a href="approvedHistory.html">查看流转记录</a>
				</td>
			</tr>
        </tbody>
    </table>
    
    <!-- 其他功能超链接 -->
    <div id="TableTail"><div id="TableTail_inside"></div></div>
</div>

<!--分页信息-->
<div id=PageSelectorBar>
	<div id=PageSelectorMemo>
		页次：<span id="currentPage"></span>/<span id="totalPage"></span>页 &nbsp;
		每页显示：<span id="pageSize"></span>条 &nbsp;
		总记录数：<span id="count"></span>条
	</div>
	<div id=PageSelectorSelectorArea>
		<!--
		<IMG SRC="../style/blue/images/pageSelector/firstPage2.png"/>
		-->
		<a href="javascript:void(0)" title="首页" style="cursor: hand;">
			<img src="page/style/blue/images/pageSelector/firstPage.png"/></a>
		
		<span class="PageSelectorNum" style="cursor: hand;" onClick="gotoPageNum(2);">3</span>
		<span class="PageSelectorNum" style="cursor: hand;" onClick="gotoPageNum(2);">4</span>
		<span class="PageSelectorNum" style="cursor: hand;" onClick="gotoPageNum(2);">5</span>
		<span class="PageSelectorNum" style="cursor: hand;" onClick="gotoPageNum(2);">6</span>
		<span class="PageSelectorNum PageSelectorSelected">7</span>
		<span class="PageSelectorNum" style="cursor: hand;" onClick="gotoPageNum(2);">8</span>
		<span class="PageSelectorNum" style="cursor: hand;" onClick="gotoPageNum(2);">9</span>
		<span class="PageSelectorNum" style="cursor: hand;" onClick="gotoPageNum(2);">10</span>
		<span class="PageSelectorNum" style="cursor: hand;" onClick="gotoPageNum(2);">11</span>
		<span class="PageSelectorNum" style="cursor: hand;" onClick="gotoPageNum(2);">12</span>
		
		<!--
		<IMG SRC="../style/blue/images/pageSelector/lastPage2.png"/>
		-->
		<a href="#" title="尾页" style="cursor: hand;">
			<img src="page/style/blue/images/pageSelector/lastPage.png"/></a>
		
		转到：
		<input onFocus="this.select();" maxlength="2" class="inputStyle" type="text" value="1" name="currPage" tabindex="0"/>
		<input type="submit" name="goBtn" value="Go" class="MiddleButtonStyle" />
	</div>
</div>

<div class="description">
	说明：<br />
	1，按申请时间降序排列，第1页看到的是最近的申请。
</div>

</body>
</html>
