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
public class DepositController {
	private final static Logger log = Logger.getLogger(DepositController.class);
	
	@Resource(name="depositAcntService")
	private IBaseService depositAcntService;

	@Resource(name="custBaseService")
	private IBaseService custBaseService;
	
	@Resource(name="gson")
	private Gson gson;
	
	private ReturnEntity entity = new ReturnEntity();
	
	@ResponseBody
	@RequestMapping(value="/getCustBaseByPage",method=RequestMethod.POST)
	public  ReturnEntity getCustBaseByPage(@RequestBody String params) throws UnsupportedEncodingException{
		log.debug("URL[/getCustBaseByPage] 进入");

		BaseListPage<?> page = gson.fromJson(params, BaseListPage.class);

		log.debug("page="+page);
		
		page = custBaseService.getByPage(page);
		entity.setEntity(page);
		entity.setStatus(true);
		entity.setMsg("查询成功");
		String test = gson.toJson(entity);
		log.info(test);
		//登录成功后的操作
		return entity;
	}

	@ResponseBody
	@RequestMapping(value="/getDepositAcntByPage",method=RequestMethod.POST)
	public  ReturnEntity getDepositAcntByPage(@RequestBody String params) throws UnsupportedEncodingException{
		log.debug("URL[/getDepositAcntByPage] 进入");

		BaseListPage<?> page = gson.fromJson(params, BaseListPage.class);

		log.debug("page="+page);
		
		depositAcntService.getByPage(page);
		entity.setEntity(page);
		entity.setStatus(true);
		entity.setMsg("查询成功");
		String test = gson.toJson(entity);
		log.info(test);
		//登录成功后的操作
		return entity;
	}

}
