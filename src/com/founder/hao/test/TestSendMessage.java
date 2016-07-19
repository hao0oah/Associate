package com.founder.hao.test;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.junit.Test;

import com.founder.base.util.SMSUtil;

public class TestSendMessage {
	
	public static void main(String[] args) throws IOException {
		//发送内容
		String content = "【JAVA示例测试】尊敬的顾客，感谢您对精功眼镜的信任与支持.祝您生活愉快,工作顺利! "; 
		String sign="签名";
		
		// 创建StringBuffer对象用来操作字符串
		StringBuffer sb = new StringBuffer("http://115.238.169.142:7788/sms.aspx?");

		//追加action=send
		sb.append("action=send");
		
		// 向StringBuffer追加用户名
		sb.append("&userid=1756");
		
		// 向StringBuffer追加用户名
		sb.append("&account=binhe");

		// 向StringBuffer追加密码（登陆网页版，在管理中心--基本资料--接口密码，是28位的）
		sb.append("&password=123456");

		// 向StringBuffer追加手机号码
		sb.append("&mobile=15595268637");

		// 向StringBuffer追加消息内容转URL标准码
		sb.append("&content="+URLEncoder.encode(content,"UTF-8"));
		
		//追加发送时间，可为空，为空为及时发送
		sb.append("&sendTime=");
		
		//是否检查非法内容关键字
		sb.append("&checkcontent=0");
		
		//加签名
		//sb.append("&sign="+URLEncoder.encode(sign,"UTF-8"));
		
		// 创建url对象
		//String temp = new String(sb.toString().getBytes("GBK"),"UTF-8");
		System.out.println("sb:"+sb.toString());
		URL url = new URL(sb.toString());

		// 打开url连接
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();

		// 设置url请求方式 ‘get’ 或者 ‘post’
		connection.setRequestMethod("POST");

		// 发送
		InputStream is =url.openStream();

		//转换返回值
		String returnStr = convertStreamToString(is);
		
		// 返回结果为‘0，20140009090990,1，提交成功’ 发送成功   具体见说明文档
		System.out.println(returnStr);
		// 返回发送结果

		

	}
	/**
	 * 转换返回值类型为UTF-8格式.
	 * @param is
	 * @return
	 */
	public static String convertStreamToString(InputStream is) {    
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
	
	@Test
	public void test01(){
		SMSUtil.sendMessage("13601007330", "测试短信，接收到了吗？如有疑问请保留！");
	}

}
