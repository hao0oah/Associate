package com.founder.hao.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.founder.hao.dao.IUserDao;
import com.founder.hao.entity.User;

public class DatabaseTest {

	@Test
	public void test01(){
		ApplicationContext context = new ClassPathXmlApplicationContext("database/datasource.xml");
		IUserDao dao= context.getBean(IUserDao.class);
		User user = (User) dao.getUserById(1);
		System.out.println(user);
	}
	
	@Test
	public void test02(){
		ApplicationContext context = new ClassPathXmlApplicationContext("database/datasource.xml");
		IUserDao dao= (IUserDao) context.getBean("IUserDao");
		User user = (User) dao.getUserById(1);
		System.out.println(user);
	}
}
