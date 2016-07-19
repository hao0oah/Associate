<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%= basePath%>">
    <title>存款账户查询</title>
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
	<script type="text/javascript" src="page/Loan_Manage/LoanAccountQuery.js" charset="utf-8"></script>
	<script type="text/javascript" src="page/script/public.js" charset="utf-8"></script>
    <link type="text/css" rel="stylesheet" href="page/style/blue/pageCommon.css" />
    
</head>
<body>

<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="page/style/images/title_arrow.gif"/> 贷款账户查询
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
					<input type="text" id="loan_no">
				</td>
				<td>客户号：</td>
				<td>
					<input type="text" id="borrower">
				</td>
				<td>到期日：</td>
				<td>
					<input type="text" id="mature_date">
				</td>
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
				<td width="150">贷款账号</td>
				<td width="130">贷款客户号</td>
				<td width="120">借据号</td>
				<td width="130">合同号</td>
				<td width="155">贷款日期</td>
				<td width="155">到期日</td>
				<td width="130">贷款金额</td>
				<td>相关操作</td>
			</tr>
		</thead>
		<!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="formList">
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
		<a title="首页" style="cursor: hand;">
			<img id="startpage" src="page/style/blue/images/pageSelector/firstPage.png"/></a>
		<a title="上一页" style="cursor: hand;">
			<img id="prevpage" src="page/style/blue/images/pageSelector/prev10page.png"/></a>
		<a title="下一页" style="cursor: hand;">
			<img id="nextpage" src="page/style/blue/images/pageSelector/forward10page.png"/></a>
		<a title="尾页" style="cursor: hand;">
			<img id="endpage" src="page/style/blue/images/pageSelector/lastPage.png"/></a>
		转到：
		<input onFocus="this.select();" maxlength="2" class="inputStyle" type="text" value="1" id="currPage" tabindex="0"/>
		<input id="gopage" type="button" name="goBtn" value="Go" class="MiddleButtonStyle"/>
	</div></div>

<div class="description">
	说明：<br />
	1，按申请时间降序排列，第1页看到的是最近的申请。
</div>

</body>
</html>
