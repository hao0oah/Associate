package com.founder.hao.controller;

import java.io.UnsupportedEncodingException;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.founder.base.util.MD5;
import com.founder.base.util.SessionUtils;
import com.founder.base.util.URLUtils;
import com.founder.hao.entity.BaseListPage;
import com.founder.hao.entity.LoginRecord;
import com.founder.hao.entity.ReturnEntity;
import com.founder.hao.entity.User;
import com.founder.hao.service.IMenuService;
import com.founder.hao.service.ISysUserService;
import com.google.gson.Gson;


@Controller
public class SysUserController {
	private final static Logger log = Logger.getLogger(SysUserController.class);
	
	@Resource(name="sysUserService")
	private ISysUserService userService;
	
	@Resource(name="menuService")
	private IMenuService menuService;
	
	@Resource(name="gson")
	private Gson gson;
	
	private ReturnEntity entity;
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView userLogin(HttpServletRequest request, RedirectAttributes attr) throws UnsupportedEncodingException{
		log.debug("URL[/login] 进入[userLogin方法]");
		request.setCharacterEncoding("UTF-8");

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String validcode = request.getParameter("validcode");
		log.debug("params[username:"+username+"; password:"+password+"; validcode:"+validcode+"]");
		
		ModelAndView view = new ModelAndView();
		entity = new ReturnEntity();
		
		//首先检查验证码
		if(!userService.checkVolidCode(request, validcode)){
			entity.setStatus(false);
			entity.setMsg("验证码错误");
			log.error("验证码错误");
			
			attr.addFlashAttribute("username", username);
			attr.addFlashAttribute("password", password);
			attr.addFlashAttribute("model", entity);
			view.setViewName("redirect:tologin.do");
			return view;
		}
		
		//校验用户名
		User user = userService.login(username);
		if(user == null){
			entity.setStatus(false);
			entity.setMsg("用户名不存在");
			log.error("用户名不存在");

			attr.addFlashAttribute("username", username);
			attr.addFlashAttribute("password", password);
			attr.addFlashAttribute("model", entity);
			view.setViewName("redirect:tologin.do");
			return view;
		}
		
		//校验当前状态是否可登录，即输入密码错误超出次数后，需要等一段时间再能重试
		int count = userService.getPwdFaltCounts(user.getUserId());
		if(count >= 3){
			entity.setStatus(false);
			entity.setMsg("密码输入错误超过3次，请5分钟后再试");
			log.error("密码输入错误超过3次");

			attr.addFlashAttribute("username", username);
			attr.addFlashAttribute("password", password);
			attr.addFlashAttribute("validcode", validcode);
			attr.addFlashAttribute("model", entity);
			view.setViewName("redirect:tologin.do");
			return view;
		}
		
		//登录记录
		LoginRecord record = new LoginRecord();
		record.setLoginStatus(0);
		record.setLoginUserId(user.getUserId());
		record.setLoginIP(URLUtils.getIpAddr(request));
		record.setLoginDevice(null);
		
		//校验密码
		if(!user.getPassword().equals(MD5.md5(password))){
			entity.setStatus(false);
			entity.setMsg("密码错误");
			log.error("密码错误");
			
			//将登陆错误信息记录下来
			record.setLoginCode(1);
			userService.addLoginRecord(record);
			
			attr.addFlashAttribute("username", username);
			attr.addFlashAttribute("model", entity);
			view.setViewName("redirect:tologin.do");
			return view;
		}
		
		//将登录成功信息记录下来
		record.setLoginCode(0);
		userService.addLoginRecord(record);
		
		//TODO: 考虑已经登录用户，再次登陆的情况（参考文超的处理）
		//将登陆用户放入Session
		SessionUtils.setUser(request, user);
		
		//TODO: 获取权限菜单和用户配置及待处理信息
		
		entity.setStatus(true);
		entity.setMsg("登录成功");
		
		//TODO:这样为什么不行？
		//view.addObject("entity", entity);

		//TODO:登录成功后的操作

		
		view.setViewName("redirect:main.do");
		
		return view;
	}
	
	@RequestMapping("/main")
	public String mainPage(HttpServletRequest request){
		log.debug("URL[/main] 进入[mainPage方法]");
		entity = new ReturnEntity();
		
		//将菜单放入Session中
		User user = (User) SessionUtils.getUser(request);
		
		if(user != null){
			Object menus =  SessionUtils.getAttr(request, SessionUtils.SESSION_MENUS);
			if(menus == null){
				menus = menuService.getUserMenu(user);
				entity.setEntity(menus);
				entity.setMsg("获取菜单成功");
				entity.setStatus(true);
				String str = gson.toJson(entity);
				log.debug("List<Menu>:"+str);
				SessionUtils.setAttr(request, SessionUtils.SESSION_MENUS, str);
			}
		} else {
			log.debug("用户未登录");
			entity.setMsg("用户未登录");
			entity.setStatus(false);
		}
		
		return "index";
	}
	
	@RequestMapping("/register")
	public void userRegister(){
		log.debug("URL[/register] 进入[register方法]");
	}
	
	@RequestMapping("/tologin")
	public String tlogin(){
		log.debug("URL[/tologin] 进入[tologin方法]");
		//TODO: 跳转登录界面的url，如何跟优雅的处理
		return "../login";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request){
		log.debug("URL[/logout] 进入[logout方法]");
		
		//将登陆用户从Session移除
		SessionUtils.removeAttr(request, SessionUtils.SESSION_USER);
		
		return "redirect:tologin.do";
	}
	
	@RequestMapping("/getmenu")
	public ReturnEntity getMenu(HttpServletRequest request){
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/getSysUserByPage",method=RequestMethod.POST)
	public  ReturnEntity getSysUserByPage(@RequestBody String params) throws UnsupportedEncodingException{
		log.debug("URL[/getSysUserByPage] 进入");

		BaseListPage<?> page = gson.fromJson(params, BaseListPage.class);

		log.debug("page="+page);
		
		page = userService.getByPage(page);
		entity.setEntity(page);
		entity.setStatus(true);
		entity.setMsg("查询成功");
		String test = gson.toJson(entity);
		log.info(test);

		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/changePwd",method=RequestMethod.POST)
	public ReturnEntity changePwd(HttpServletRequest request,@RequestBody String params) {
		log.debug("URL[/changePwd] 进入");
		log.debug("params["+params+"]");
		
		JSONObject jobj = JSONObject.fromObject(params);
		String password0 = jobj.optString("password0");
		String password1 = jobj.optString("password1");
		
		User user = (User) SessionUtils.getUser(request);
		if(user != null){
			if(!user.getPassword().equals(MD5.md5(password0))){
				entity.setStatus(false);
				entity.setMsg("原密码错误！");
			} else {
				user.setPassword(MD5.md5(password1));
				userService.updateUser(user);
				entity.setStatus(true);
				entity.setMsg("密码修改成功！");
			}
		}
		entity.setEntity(null);
		
		return entity;
	}
}
