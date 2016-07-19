<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<base href="<%=basePath%>">
<title>系统首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<frameset rows="100,*,25" framespacing="0" border="0" frameborder="0">
	<frame src="page/top.jsp" name="TopMenu" scrolling="no" noresize />
	<frameset cols="180,*" id="resize">
		<frame noresize name="menu" src="page/left.jsp" scrolling="yes" />
		<frame noresize name="right" src="page/right.jsp" scrolling="yes" />
	</frameset>
	<frame noresize name="status_bar" scrolling="no" src="page/bottom.jsp" />
</frameset>
<noframes>
	<body>
	</body>
</noframes>
</html>
