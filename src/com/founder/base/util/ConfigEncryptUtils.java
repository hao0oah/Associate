package com.founder.base.util;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.jasypt.encryption.pbe.config.EnvironmentStringPBEConfig;

public class ConfigEncryptUtils {

	/**
	 * PBEWithMD5AndDES加密字符串
	 * 
	 * @param str
	 * @return
	 */
	public String entryString(String str) {
		// 加密工具
		StandardPBEStringEncryptor encryptor = new StandardPBEStringEncryptor();
		// 加密配置
		EnvironmentStringPBEConfig config = new EnvironmentStringPBEConfig();
		config.setAlgorithm("PBEWithMD5AndDES");
		// 自己在用的时候更改此密码
		config.setPassword("founder");
		// 应用配置
		encryptor.setConfig(config);
		// 加密
		return encryptor.encrypt(str);
	}

	/**
	 * PBEWithMD5AndDES解密字符串
	 * 
	 * @param str
	 * @return
	 */
	public String decryptString(String str) {
		// 加密工具
		StandardPBEStringEncryptor encryptor = new StandardPBEStringEncryptor();
		// 加密配置
		EnvironmentStringPBEConfig config = new EnvironmentStringPBEConfig();
		config.setAlgorithm("PBEWithMD5AndDES");
		// 自己在用的时候更改此密码
		config.setPassword("founder");
		// 应用配置
		encryptor.setConfig(config);
		// 解密
		return encryptor.decrypt(str);
	}

	public static void main(String[] args) {
		System.out.println(new ConfigEncryptUtils().entryString("root"));
		System.out.println(new ConfigEncryptUtils().decryptString("xGeNHNJs7MBtvPu+hcrVhw=="));
	}
}
