package com.founder.hao.controller;

import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.founder.hao.entity.BaseListPage;
import com.founder.hao.entity.ReturnEntity;
import com.founder.hao.service.IBaseService;
import com.google.gson.Gson;

@Controller
public class LoanController {
	private final static Logger log = Logger.getLogger(LoanController.class);
	
	@Resource(name="loanAcntService")
	private IBaseService loanAcntService;

	@Resource(name="gson")
	private Gson gson;
	
	private ReturnEntity entity = new ReturnEntity();
	
	@ResponseBody
	@RequestMapping(value="/getLoanAcntByPage",method=RequestMethod.POST)
	public  ReturnEntity getLoanAcntByPage(@RequestBody String params) throws UnsupportedEncodingException{
		log.debug("URL[/getCustBaseByPage] 进入");

		BaseListPage<?> page = gson.fromJson(params, BaseListPage.class);

		log.debug("page="+page);
		
		page = loanAcntService.getByPage(page);
		entity.setEntity(page);
		entity.setStatus(true);
		entity.setMsg("查询成功");
		String test = gson.toJson(entity);
		log.info(test);
		//登录成功后的操作
		return entity;
	}

}
