package com.founder.base.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import org.apache.log4j.Logger;

public class SMSUtil {
	private final static Logger log = Logger.getLogger(SMSUtil.class);
	
	private static final String WEBNET = "http://115.238.169.142:7788/sms.aspx?";
	private static final String ACTION_SEND = "send";
	private static final String USER_ID = "1756";
	private static final String ACCOUNT = "binhe";
	private static final String PASSWORD = "123456";
	private static final String SIGN = "【滨河创新】";
	/**
	 * 默认0-不检查，1-检查
	 */
	private static final int CHECKCON = 0;
	
	//根节点
	public static final String ROOT = "returnsms";
	
	/**
	 * 返回状态值：成功返回Success 失败返回：Faild
	 */
	public static final String STATUS = "returnstatus";
	public static final String STATUS_SUC = "Success";
	public static final String STATUS_FAL = "Faild";
	
	/**
	 * 返回信息：
	 * ok:提交成功
	 * 用户名或密码不能为空:提交的用户名或密码为空
	 * 发送内容包含sql注入字符:包含sql注入字符
	 * 用户名或密码错误:表示用户名或密码错误
	 * 短信号码不能为空:提交的被叫号码为空
	 * 短信内容不能为空:发送内容为空
	 * 包含非法字符：:表示检查到不允许发送的非法字符
	 * 对不起，您当前要发送的量大于您当前余额:当支付方式为预付费是，检查到账户余额不足
	 * 其他错误:其他数据库操作方面的错误
	 */
	public static final String MESSAGE = "message";
	
	public static final String REMAIN = "remainpoint";
	
	public static final String TASKID = "taskID";
	
	public static final String SUC_CNT = "successCounts";
	
	/**
	 * 调用短信发送接口，发送短信
	 * @param mobileno
	 * @param content
	 */
	public static void sendMessage(String mobileno,String content) {
		StringBuffer strTmp = new StringBuffer(WEBNET);
		try {
			strTmp.append("action=").append(ACTION_SEND)
			.append("&userid=").append(USER_ID)
			.append("&account=").append(ACCOUNT)
			.append("&password=").append(PASSWORD)
			.append("&mobile=").append(mobileno)
			.append("&content=").append(URLEncoder.encode(SIGN+content, "UTF-8"))
			.append("&sendTime=").append("&checkcontent=").append(CHECKCON);
			log.debug("短信发送URL["+strTmp+"]");
		} catch (UnsupportedEncodingException e) {
			log.error("不支持的字符编码");
			log.error(e);
		}
		
		try {
			URL url = new URL(strTmp.toString());
			HttpURLConnection connection =  (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			
			InputStream ins = url.openStream();
			String returnStr = convertStreamToString(ins);
			
			log.debug("接收返回报文：");
			log.debug(XMLUtil.formatXml(returnStr));
			
			String stat = XMLUtil.readFromDoc(returnStr, STATUS);
			if(STATUS_SUC.equals(stat)){
				String remain = XMLUtil.readFromDoc(returnStr, REMAIN);
				log.debug("短信发送成功！剩余短信条数["+remain+"]");
			} else {
				String message = XMLUtil.readFromDoc(returnStr, MESSAGE);
				log.debug("短信发送失败！错误原因["+message+"]");
			}
			
		} catch (MalformedURLException e) {
			log.error("URL错误");
			log.error(e);
		} catch (IOException e) {
			log.error("IO错误");
			log.error(e);
		}
	}
	
	/**
	 * 转换返回值类型为UTF-8格式.
	 */
	private static String convertStreamToString(InputStream is) {
		StringBuilder sb1 = new StringBuilder();
		byte[] bytes = new byte[4096];
		int size = 0;

		try {
			while ((size = is.read(bytes)) > 0) {
				String str = new String(bytes, 0, size, "UTF-8");
				sb1.append(str);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return sb1.toString();
	}
}
