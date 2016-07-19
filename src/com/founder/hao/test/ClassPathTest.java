package com.founder.hao.test;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbcp.BasicDataSource;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ClassPathTest {

	@Test
	public void test01(){
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-servlet.xml");
		String id = context.getId();
		System.out.println("id="+id);
	}
	
	@Test
	public void test02(){
		ApplicationContext context = new ClassPathXmlApplicationContext("database/datasource.xml");
		BasicDataSource datasource = (BasicDataSource) context.getBean("default_dataSource");
		System.out.println(datasource);
		try {
			Connection conn = datasource.getConnection();
			System.out.println("conn="+conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String url = datasource.getUrl();
		System.out.println("url="+url);
	}
	
	@Test
	public void test03(){
		ApplicationContext context = new ClassPathXmlApplicationContext("database/sprint-test.xml");
		MyDataSource myds = (MyDataSource) context.getBean("myds");
		System.out.println(myds);


	}
}
