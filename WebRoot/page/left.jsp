<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>导航菜单</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="script/jquery.js"></script>
<script type="text/javascript" src="script/jquery.min.js"></script>
<script type="text/javascript" src="script/menu.js"></script>
<link type="text/css" rel="stylesheet" href="style/blue/menu.css" />
<script type="text/javascript">

	$(function(){
		var data = <%=session.getAttribute("session_menus")%>;
		getMenu(data);
	});
	function getMenu(data){
		//var obj = JSON.parse(data);
		var obj = data;
		if (!obj.status){
			alert(obj.msg);
	        return false;
	    }

	    var dataList = obj.entity;
	    var ulm = $(".level1Menu");
	    ulm.empty();
	
		ulm.append(showMenu(dataList));
	}
	
	function showMenu(dataList){
	
		var ulm = "";
		
		$(dataList).each(function(index) {
	        var item = dataList[index];
		        
	        var menuId = item.menuId;
	        var menuName = item.menuName;
	        var menuUrl = item.menuUrl;
	        var menuParentId = item.menuParentId;
	        var menuOrder = item.menuOrder;
	        var menuIcon = item.menuIcon;
	        var menuType = item.menuType;
	        var menuTarget = item.menuTarget;
	        var menuLevel = item.menuLevel;
	        var menuCss = item.menuCss;
	        
	        var subMenus = item.subMenus;
	        
	        //TODO:生成菜单
	        ulm+="<li class='"+menuCss+"'>";
	        if(menuLevel == 1)
	        	ulm+="<div onClick='menuClick(this);' class='"+menuCss+"Style'>";
	        else
	        	ulm+="<div class='"+menuCss+"Style'>";
	        ulm+="<img src='"+menuIcon+"' class='Icon'/>"
	        if(subMenus != null && subMenus.length>0){
	        	ulm+=menuName+"</div>";
				ulm+="<ul style='display:none;' class='level2Menu'>";
				ulm+=showMenu(subMenus);
				ulm+="</ul>";
	        }else{
		        ulm+="<a target='"+menuTarget+"' href='"+menuUrl+"'>"+menuName+"</a></div>";
	        }
			ulm+="</li>";
			
	    });
	    return ulm;
	}
	
</script>
</head>
<body style="margin: 0">
<div id="Menu">
	
    <ul class="level1Menu">
    	<!-- 
        <li class="level1">
            <div onClick="menuClick(this)" class="level1Style"><img src="style/images/MenuIcon/FUNC20001.gif" class="Icon" />个人办公</div>
            <ul style="display: none;" class="level2Menu">
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> 个人考勤</div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> 日程安排</div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> 工作计划</div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> 工作日记</div>
                </li>
                <li class="level2">
                	<div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> 通讯录</div>
                </li>
            </ul>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="style/images/MenuIcon/FUNC20057.gif" class="Icon" /> 审批流转</div>
            <ul style="display: none;" class="level2Menu">
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="Flow_ProcessDefinition/list.html">审批流程管理</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="Flow_FormTemplate/list.html">表单模板管理</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right"
			href="Flow_Formflow/formTemplateList.html">起草申请</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="Flow_Formflow/myTaskList.html"> 待我审批</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right"
			href="Flow_FormFlow_Old/mySubmittedList.html">我的申请查询</a></div>
                </li>
				<li class="level2">
					<div class="level2Style"><img
		                  src="style/images/MenuIcon/menu_arrow_single.gif" /> <a  target="right" href="Flow_FormQuery/myApprovedList.html">经我审批</a> </div>
				</li>
            </ul>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="style/images/MenuIcon/FUNC20064.gif" class="Icon" /> 网上交流</div>
            <ul style="display: none;" class="level2Menu">
                <li class="level2">
                    <div onClick="subMenuClick(this);" class="level2Style"><img src="style/images/MenuIcon/menu_arrow_close.gif" /> 短消息</div>
                    <ul style="display: none;" class="level2Menu">
                        <li class="level3Head"><a target="right" href="Person_Message/saveUI.html">发送短消息</a></li>
                        <li class="level33"><a target="right" href="Person_Message/inbox.html">已接收</a></li>
                        <li class="level33"><a target="right" href="Person_Message/outbox.html">已发送</a></li>
                        <li class="level32"><a target="right" href="Person_Message/draftbox.html">草稿箱</a></li>
                    </ul>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="BBS_Forum/forumList.html">论坛</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="BBS_ForumManage/list.html">论坛管理</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> 投票</div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> 实时聊天</div>
                </li>
            </ul>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="style/images/MenuIcon/FUNC20070.gif" class="Icon" /> 综合行政</div>
            <ul style="display: none;" class="level2Menu">
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> 考勤管理</div>
                </li>
                <li class="level2">
                    <div onClick="subMenuClick(this);" class="level2Style"><img src="style/images/MenuIcon/menu_arrow_close.gif" /> 会议管理</div>
                    <ul style="display: none;" class="level2Menu">
                        <li class="level3Head">会议申请</li>
                        <li class="level33">暂存会议查询</li>
                        <li class="level33">待我参加会议</li>
                        <li class="level33">我已参加会议</li>
                        <li class="level33">新建会议纪要</li>
                        <li class="level33">会议纪要查询</li>
                        <li class="level33">待开会议查询</li>
                        <li class="level33">已开会议查询</li>
                        <li class="level33">会议室设置</li>
                        <li class="level32">会议类型设置</li>
                    </ul>
                </li>
                <li class="level2">
                    <div onClick="subMenuClick(this);" class="level2Style"><img src="style/images/MenuIcon/menu_arrow_close.gif" /> 车辆管理</div>
                    <ul style="display: none;" class="level2Menu">
                        <li class="level3Head">用车申请</li>
                        <li class="level33">派车管理</li>
                        <li class="level33">我的申请记录</li>
                        <li class="level33">车辆状态</li>
                        <li class="level33">车辆档案</li>
                        <li class="level32">私车公用</li>
                    </ul>
                </li>
            </ul>
        </li>
        
        <li class="level1">
            <div class="level1Style"><img src="style/images/MenuIcon/FUNC20056.gif" class="Icon" /> <a target="right" href="right.jsp">系统首页</a></div>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="style/images/MenuIcon/FUNC20101.gif" class="Icon" /> 存款管理</div>
            <ul style="display: none;" class="level2Menu">
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /><a target="right" href="Deposit_Manage/DepositorQuery.jsp"> 存款人查询</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /><a target="right" href="#"> 存款账户查询</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /><a target="right" href="#"> 存款变动信息</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /><a target="right" href="#"> 存款信息查询</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /><a target="right" href="#"> 存款信息统计</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /><a target="right" href="#"> 异常存款统计</a></div>
                </li>
            </ul>
        </li>
        
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="style/images/MenuIcon/FUNC20057.gif" class="Icon" /> 贷款管理</div>
            <ul style="display: none;" class="level2Menu">
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="#">贷款人查询</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="#">贷款账户查询</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="#">还款计划</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="#">还款信息查询</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="#">还款信息统计</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="#">异常还款统计</a></div>
                </li>
            </ul>
        </li>
		<li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="style/images/MenuIcon/FUNC20064.gif" class="Icon" /> 通知管理</div>
            <ul style="display: none;" class="level2Menu">
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /><a target="right" href="Person_Config/editUserInfoUI.html">短信提醒设置</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /><a target="right" href="Person_Config/editPasswordUI.html">发送短信查询</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /><a target="right" href="#"> 发送短信统计</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /><a target="right" href="#">异常短信统计</a></div>
                </li>
            </ul>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="style/images/MenuIcon/FUNC20077.gif" class="Icon" /> 个人设置</div>
            <ul style="display: none;" class="level2Menu">
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="Person_Config/editUserInfoUI.html">个人信息</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="Person_Config/editPasswordUI.html">密码修改</a></div>
                </li>
                <!--
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> 桌面定义</div>
                </li> ----
            </ul>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="style/images/MenuIcon/FUNC20082.gif" class="Icon" /> 系统管理</div>
            <ul style="display: none;" class="level2Menu">
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="System_User/list.html"> 用户管理</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="System_Role/list.html"> 菜单管理</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="System_Role/list.html"> 权限管理</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="System_Department/list.html"> 机构管理</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="System_Department/list.html"> 系统参数设置</a></div>
                </li>
            </ul>
        </li>
         -->
    </ul>
</div>
</body>
</html>
