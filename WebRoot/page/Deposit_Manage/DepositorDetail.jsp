<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%= basePath%>">
	<title>客户详细信息</title>
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
			$("#cust_id").text(obj.cust_id);
			$("#party_name").text(obj.party_name);
			$("#cert_no").text(obj.cert_no);
			$("#govn_cert_no").text(obj.govn_cert_no);
			$("#company_no").text(obj.company_no);
			$("#bssav_acc_no").text(obj.bssav_acc_no);
			$("#bas_open_permit_no").text(obj.bas_open_permit_no);
			$("#acct_lic_no").text(obj.acct_lic_no);
			$("#address").text(obj.nation + obj.province+obj.city+obj.country+obj.addr_line);
			$("#phone_no").text(obj.phone_no);
			$("#mobile_no").text(obj.mobile_no);
			$("#email_addr").text(obj.email_addr);
		}
	</script>
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题
            <img border="0" width="13" height="13" src="page/style/images/title_arrow.gif"/> 客户详细信息 -->
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
                        <td width="150">客户号</td>
                        <td id="cust_id"></td>
						<td rowspan="5" align="right">
							<img src="page/style/images/defaultAvatar.gif"/>
						</td>
                    </tr>
                    <tr>
                        <td>客户名称</td>
                        <td id="party_name"></td>
                    </tr>
                    <tr>
                        <td>证件编号</td>
                        <td  id="cert_no"></td>
                    </tr>
					<tr>
                        <td>营业执照号码</td>
                        <td id="govn_cert_no"></td>
                    </tr>
					<tr>
                        <td>组织机构代码</td>
                        <td id="company_no"></td>
                    </tr>
                    <tr>
                        <td>基本存款账户账号</td>
                        <td id="bssav_acc_no"></td>
                    </tr>
                    <tr>
                        <td>基本户开户许可证核准号</td>
                        <td id="bas_open_permit_no"></td>
                    </tr>
                    <tr>
                        <td>开户许可证号</td>
                        <td id="acct_lic_no"></td>
                    </tr>
                    <tr>
                        <td>联系地址</td>
                        <td id="address"></td>
                    </tr>
                    <tr>
                        <td>电话号码</td>
                        <td id="phone_no"></td>
                    </tr>
                    <tr>
                        <td>手机号码</td>
                        <td id="mobile_no"></td>
                    </tr>
                    <tr>
                        <td>电子邮件</td>
                        <td id="email_addr"></td>
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
	1.查看存款人的详细信息。<br />
</div>

</body>
</html>
