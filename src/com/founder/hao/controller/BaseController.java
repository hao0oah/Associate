package com.founder.hao.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.servlet.ModelAndView;

import com.founder.base.util.HtmlUtil;
import com.founder.base.util.MyEditor;
import com.founder.hao.entity.ReturnEntity;


public class BaseController {

	public final static String SUCCESS = "success";

	public final static String MSG = "msg";

	public final static String DATA = "data";

	public final static String LOGOUT_FLAG = "logoutFlag";

	protected ReturnEntity entity = new ReturnEntity();
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));
		binder.registerCustomEditor(int.class, new MyEditor());
	}

	/**
	 * 获取IP地址
	 */
	public String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}

	/**
	 * 所有ActionMap 统一从这里获取
	 * 
	 * @return
	 */
	public Map<String, Object> getRootMap() {
		Map<String, Object> rootMap = new HashMap<String, Object>();
		// 添加url到 Map中
		// rootMap.putAll(URLUtils.getUrlMap());
		return rootMap;
	}

	public ModelAndView forword(String viewName, Map<String,Object>  context) {
		return new ModelAndView(viewName, context);
	}

	public ModelAndView error(String errMsg) {
		return new ModelAndView("error");
	}

	/**
	 * 提示成功信息1
	 */
	public void sendSuccessMessage(HttpServletRequest request,
			HttpServletResponse response, String message) {
		String userAgent = request.getHeader("user-agent");// 浏览器类型
		Map<String, Object> result = new HashMap<String, Object>();

		result.put(SUCCESS, true);
		result.put(MSG, message);
		if (StringUtils.contains(userAgent, "Chrome")
				|| StringUtils.contains(userAgent, "Firefox")) {// google,火狐浏览器
			HtmlUtil.writerJson(response, result);
		} else {
			HtmlUtil.writerJsonHtml(response, result);
		}

	}

	/**
	 * 提示成功信息2
	 */
	public void sendSuccessMessage(HttpServletResponse response, String message) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put(SUCCESS, true);
		result.put(MSG, message);
		HtmlUtil.writerJson(response, result);
	}

	/**
	 * 提示失败信息1
	 */
	public void sendFailureMessage(HttpServletRequest request,
			HttpServletResponse response, String message) {
		String userAgent = request.getHeader("USER-AGENT");// 浏览器类型
		Map<String, Object> result = new HashMap<String, Object>();
		result.put(SUCCESS, false);
		result.put(MSG, message);
		if (StringUtils.contains(userAgent, "Mozilla")) {// google,火狐浏览器
			HtmlUtil.writerJson(response, result);
		} else {
			HtmlUtil.writerJsonHtml(response, result);
		}
	}

	/**
	 * 提示失败信息2
	 */
	public void sendFailureMessage(HttpServletResponse response, String message) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put(SUCCESS, false);
		result.put(MSG, message);
		HtmlUtil.writerJson(response, result);
	}
}
