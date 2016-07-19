<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>系统登录</title>
        <link rel="shortcut icon" href="favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/login.css" />
        <!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
        <script type="text/javascript" src="page/script/jquery.js"></script>
    	<script type="text/javascript" src="page/script/jquery.min.js"></script>
		<script src="js/modernizr.custom.63321.js"></script>
		<script type="text/javascript">
			$(function(){
				
				//设置一个定时执行程序，定时将消息提示置空
				//$("#showmsg").text("");
				
				$("#getvolidcode").focus(function(){
					if($("#validimg").attr("src") == null){
						$("#validimg").attr("src","ImageServlet?date="+new Date().getMilliseconds());
					}
				});
				
				$("#validimg").click(function(){
					if($("#validimg").attr("src") != null){
						$("#validimg").attr("src","ImageServlet?date="+new Date().getMilliseconds());
					}
				});
			});
			
			function validate_required(field) {
				with (field) {
			  		if (value==null||value=="")
			  			return false;
			  		return true;
				}
			}
			
			function validate_form(thisform) {
				with (thisform) {
					if (!validate_required(username)){
						username.focus();
						$("#showmsg").text("用户名不可为空");
						return false;
					}
					if (!validate_required(password)){
						password.focus();
						$("#showmsg").text("密码不可为空");
						return false;
					}
					if (!validate_required(validcode)){
						validcode.focus();
						$("#showmsg").text("验证码不可为空");
						return false;
					}
					$("#showmsg").text("");
					return true;
				}
			}
		</script>
		
    </head>
    <body>
        <div class="container">
		
			<!-- Codrops top bar 
            <div class="codrops-top">
                <a href="http://tympanus.net/Tutorials/RealtimeGeolocationNode/">
                    <strong>&laquo; Previous Demo: </strong>Real-Time Geolocation Service with Node.js
                </a>
                <span class="right">
                    <a href="http://tympanus.net/codrops/?p=11372">
                        <strong>Back to the Codrops Article</strong>
                    </a>
                </span>
            </div>
            -->
            <!--/ Codrops top bar -->
			
			<header>
			
				<h1><strong>存贷款业务综合分析系统</strong></h1>
				<h2>Integrated analysis system for deposit and loan business</h2>
				
				<nav class="codrops-demos">
					
				</nav>

				<div class="support-note">
					<span class="note-ie">Sorry, only modern browsers.</span>
				</div>
				
			</header>
			
			<section class="main">
				<form class="form-2" action="login.do" onsubmit="return validate_form(this)" method="post">
					<h1><span class="log-in"> 登录 </span> | <span class="sign-up"> 注册 </span></h1>
					<p class="float">
						<label for="username"><i class="icon-user"></i>账号</label>
						<input type="text" name="username" placeholder="用户名/邮箱/手机号" value="${username}">
					</p>
					<p class="float">
						<label for="password"><i class="icon-lock"></i>密码</label>
						<input type="password" name="password" placeholder="Password" class="showpassword" value="${password}">
					</p>
					<p class="float">
						<label for="validcode"><i class="icon-lock"></i>验证码</label>
						<input type="text" name="validcode" placeholder="点击获取" id="getvolidcode" value="${validcode}">
					</p>
					<p class="float">
						<label>&nbsp;</label>
						<img id="validimg">
					</p>
					<p class="float forgetpwd">
						<a href="#">忘记密码？</a>
					</p>
					<p class="clr">
						<a href="register" class="log-twitter">注册</a>
						<input type="submit" name="submit" value="登录">
					</p>
					<p class="msg">
						<span id="showmsg">${model.msg}</span>
					</p>
				</form>​​
			</section>
			
        </div>
		<%-- <jsp:include page="page/public/foot_rights.jsp" ></jsp:include> --%>
		<%@include file="page/public/foot_rights.jsp" %>
    

	</body>
</html>