package com.founder.hao.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.founder.base.util.SessionUtils;
import com.founder.hao.entity.User;


/**
 * 权限拦截器
 * @author Hao
 */
public class AuthInterceptor extends HandlerInterceptorAdapter {
	private final static Logger log = Logger.getLogger(AuthInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		//HandlerMethod method = (HandlerMethod) handler;
		log.debug("进入验证登录拦截器-preHandle--->");
		String baseUri = request.getContextPath();
		String path = request.getServletPath();
		User user = (User) SessionUtils.getUser(request);

		if(!path.contains("login")){
			if(user == null) {
				log.debug("用户未登录");
				response.setStatus(HttpServletResponse.SC_GATEWAY_TIMEOUT);
				response.sendRedirect(baseUri + "/login.jsp");
				return false;
			} else {
				//TODO:此处验证权限
			}
		}
			
		log.debug("退出验证登录拦截器-preHandle--->");
		return super.preHandle(request, response, handler);
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		log.debug("进入验证登录拦截器-afterCompletion");
		super.afterCompletion(request, response, handler, ex);
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		log.debug("进入验证登录拦截器-postHandle");
		super.postHandle(request, response, handler, modelAndView);
	}

}
