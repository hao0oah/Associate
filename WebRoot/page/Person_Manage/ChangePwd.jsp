<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%= basePath%>">
	<title>修改密码</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
	<script type="text/javascript" src="page/script/jquery.js"></script>
    <script type="text/javascript" src="page/script/jquery.min.js"></script>
	<script type="text/javascript" src="page/script/DepositorDetail.js" charset="utf-8"></script>
	<script type="text/javascript" src="page/script/public.js" charset="utf-8"></script>
	<script type="text/javascript" src="page/script/json2.js" charset="utf-8"></script>
	<!-- 
    <script type="text/javascript" src="page/script/pageCommon.js" charset="utf-8"></script>
    <script type="text/javascript" src="page/script/PageUtils.js" charset="utf-8"></script>
	<script type="text/javascript" src="page/script/DataShowManager.js" charset="utf-8"></script>
	 -->
    <link type="text/css" rel="stylesheet" href="page/style/blue/pageCommon.css" />
    <script type="text/javascript">
    	$(function(){
    		$("#chpwd").click(function(){
    			var oldpwd = $("input[name='oldPassword']").val();
    			if(oldpwd.trim() == ""){
    				alert("原密码不可为空！");
    				return;
    			}
    			var pwd1 = $("input[name='password']").val();
    			var pwd2 = $("input[name='password2']").val();
    			if(pwd1.trim() == ""){
    				alert("新密码不可为空！");
    				return;
    			}
    			if(pwd1 != pwd2){
    				alert("两次密码输入不一致！");
    				return;
    			}
    			
    			var data = {};
				data.password0 = oldpwd;
				data.password1 = pwd1;

				$.ajax({
					type : "POST",
					url : "changePwd.do",
					data : JSON.stringify(data),
					dataType : "JSON",
					contentType : "application/json",
					success : function(data) {
						if (!data.status) {
							alert(data.msg);
						} else {
							$("input").val("");
							alert(data.msg);
						}
					}
				});
			});
		});
</script>
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="page/style/images/title_arrow.gif"/> 修改密码
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>
        <div class="ItemBlock_Title1"><!-- 信息说明<DIV CLASS="ItemBlock_Title1">
        	<IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="page/style/blue/images/item_point.gif" /> 修改密码 </DIV>  -->
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
					<tr height="50">
						<td width="150">
							<img border="0" width="4" height="7" src="page/style/blue/images/item_point.gif" />
							请输入原密码
						</td>
						<td><input type="password" name="oldPassword" class="InputStyle" /> *</td>
					</tr>
					<tr height="25">
						<td width="150">
							<img border="0" width="4" height="7" src="page/style/blue/images/item_point.gif" />
							请填写新密码
						</td>
						<td><input type="password" name="password" class="InputStyle" /> *</td>
						<td></td>
					</tr>
					<tr height="25">
						<td width="150">
							<img border="0" width="4" height="7" src="page/style/blue/images/item_point.gif" />
							再次输入新密码
						</td>
						<td><input type="password" name="password2" class="InputStyle" /></td>
						<td></td>
					</tr>
                </table>
            </div>
        </div>
       
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <input id="chpwd" type="image" src="page/style/images/save.png"/>
            <a href="javascript:history.go(-1);"><img src="page/style/images/goBack.png"/></a>
        </div>
</div>

<div class="Description">
	验证规则：<br />
	1，旧密码不能为空。<br />
	2，新密码不能为空。<br />
	3，再次输入的密码要和新密码一致。<br />
</div>

</body>
</html>
