<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

  <style type="text/css">
	html {
		background-image: none;
	}
	#versionBar {
		background-color: #212121;
		position: fixed;
		_position: absolute;
		width: 100%;
		height: 25px;
		 _top: auto;
	    _bottom: expression(eval(document.documentElement.scrollTop));
	    bottom: 0px;
		left: 0;
		text-align: center;
		line-height: 35px;
		z-index: 11;
		-webkit-box-shadow: black 0px 10px 10px -10px inset;
		-moz-box-shadow: black 0px 10px 10px -10px inset;
		box-shadow: black 0px 10px 10px -10px inset;
	}
	.copyright {
		text-align: center;
		font-size: 12px;
		color: #CCC;
	}
	.copyright a {
		color: #A31F1A;
		text-decoration: none
	}
  </style>

  <!--Login div-->
  <div class="clear"></div>
  <div id="versionBar">
   <div class="copyright">
    &copy; 版权所有
    <span class="tip"><a href="##" title="存贷款管理系统"> 方正国际</a> (推荐 IE(Version 10/11)/ Chrome/ Firefox 系列浏览器)技术:<a href="###" title="方正国际"> Founder </a></span>
   </div>
  </div>
