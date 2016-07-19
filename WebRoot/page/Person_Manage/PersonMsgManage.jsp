<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="com.founder.hao.entity.User" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%= basePath%>">
	<title>个人信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="page/script/jquery.js"></script>
    <script type="text/javascript" src="page/script/jquery.min.js"></script>
	<script type="text/javascript" src="page/script/DepositorDetail.js" charset="utf-8"></script>
	<script type="text/javascript" src="page/script/public.js" charset="utf-8"></script>
	<script type="text/javascript" src="page/script/json2.js" charset="utf-8"></script>
	<!-- 
    <script type="text/javascript" src="page/script/pageCommon.js" charset="utf-8"></script>
    <script type="text/javascript" src="page/script/PageUtils.js" charset="utf-8"></script>
    <script type="text/javascript" src="page/script/DemoData.js" charset="utf-8"></script>
	<script type="text/javascript" src="page/script/DataShowManager.js" charset="utf-8"></script>
	 -->
    <link type="text/css" rel="stylesheet" href="page/style/blue/pageCommon.css" />
    <script type="text/javascript">
    </script>
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="page/style/images/title_arrow.gif"/> 个人信息
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>
    <form action="page/System_User/list.html" enctype="multipart/form-data">
        <div class="ItemBlock_Title1"><!-- 信息说明<DIV CLASS="ItemBlock_Title1">
        	<IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="page/style/blue/images/item_point.gif" /> 个人信息 </DIV>  -->
        </div>
        <%
			User user = (User)session.getAttribute("session_user");
			if(user == null){
				user = new User();
				user.setName("未登录");
			}
		%>
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
					<tr>
                        <td width="150">用户ID</td>
                        <td><%=user.getUserId()%></td>
						<td rowspan="5" align="right">
							<img src="page/style/images/defaultAvatar.gif"/>
						</td>
                    </tr>
                    <tr>
                        <td>登录用户名</td>
                        <td><%=user.getUsername()%></td>
                    </tr>
                    <tr>
                        <td>用户姓名</td>
                        <td><%=user.getName()%></td>
                    </tr>
					<tr>
                        <td>手机号码</td>
                        <td><%=user.getPhone()==null?"无":user.getPhone()%></td>
                    </tr>
					<tr>
                        <td>电子邮箱</td>
                        <td><%=user.getEmail()==null?"无":user.getEmail()%></td>
                    </tr>
                    <tr>
                    <td>QQ</td>
                        <td><%=user.getQq()==null?"无":user.getQq()%></td>
                    </tr>
					<tr>
                        <td>头像</td>
                        <td><input type="file" name="resource" class="InputStyle" style="width: 400px;"/></td>
                    </tr>
                </table>
            </div>
        </div>
       
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <input type="image" src="page/style/images/save.png"/>
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
