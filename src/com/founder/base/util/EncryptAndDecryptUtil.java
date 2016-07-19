package com.founder.base.util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

import org.apache.commons.codec.binary.Base64;

/**
 * 加密解密工具
 * 
 * @author SUNPENG
 *
 */
public class EncryptAndDecryptUtil {

	public EncryptAndDecryptUtil() {
		try {
			init();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void init() throws NoSuchAlgorithmException,
			NoSuchProviderException, UnsupportedEncodingException,
			NoSuchPaddingException, InvalidKeySpecException {
		SecretKeyFactory secretKeyFactory = SecretKeyFactory
				.getInstance("PBEWithMD5AndDES");
		PBEParameterSpec parameterSpec = new PBEParameterSpec(new byte[] { 1,
				2, 3, 4, 5, 6, 7, 8 }, 1000);
		KeySpec keySpec = new PBEKeySpec("FOUNDER".toCharArray());
		SecretKey key = secretKeyFactory.generateSecret(keySpec);

		Cipher cipher = Cipher.getInstance("PBEWithMD5AndDES");

		setKey(key);
		setParameterSpec(parameterSpec);
		setCipher(cipher);
	}

	/**
	 * 加密
	 * 
	 * @param str
	 * @return
	 * @throws InvalidKeyException
	 * @throws InvalidAlgorithmParameterException
	 * @throws IllegalBlockSizeException
	 * @throws BadPaddingException
	 */
	public String encrypt(String str) {
		String returnStr = "";
		try {
			getCipher().init(Cipher.ENCRYPT_MODE, getKey(), getParameterSpec());
		} catch (Exception e) {
			e.printStackTrace();
		}
		byte[] strByte = null;
		try {
			strByte = str.getBytes("UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		// 加密
		byte[] encryStr = null;
		try {
			encryStr = getCipher().doFinal(strByte);
		} catch (Exception e) {
			e.printStackTrace();
		}
		returnStr = Base64.encodeBase64String(encryStr);
		return returnStr;

	}

	/**
	 * 解密
	 * 
	 * @param str
	 * @return
	 * @throws InvalidKeyException
	 * @throws InvalidAlgorithmParameterException
	 * @throws IOException
	 * @throws IllegalBlockSizeException
	 * @throws BadPaddingException
	 */
	public String decrypt(String str) {
		String returnStr = "";
		try {
			getCipher().init(Cipher.DECRYPT_MODE, getKey(), getParameterSpec());
		} catch (Exception e) {
			e.printStackTrace();
		}
		byte[] strByte = null;
		strByte = Base64.decodeBase64(str);
		byte[] returnStrByte = null;
		try {
			returnStrByte = getCipher().doFinal(strByte);
		} catch (Exception e) {
			e.printStackTrace();
		}
		returnStr = new String(returnStrByte);
		return returnStr;
	}

	public SecretKey getKey() {
		return key;
	}

	public void setKey(SecretKey key) {
		this.key = key;
	}

	public PBEParameterSpec getParameterSpec() {
		return parameterSpec;
	}

	public void setParameterSpec(PBEParameterSpec parameterSpec) {
		this.parameterSpec = parameterSpec;
	}

	public Cipher getCipher() {
		return cipher;
	}

	public void setCipher(Cipher cipher) {
		this.cipher = cipher;
	}

	// 对称密钥
	private SecretKey key;
	// 加解密时的初始化向量 8bytes
	private PBEParameterSpec parameterSpec;
	// cipher
	private Cipher cipher;

	public static void main(String[] args) {
		EncryptAndDecryptUtil encrypt = new EncryptAndDecryptUtil();
		String test = "xbank";
		String entryString = encrypt.encrypt(test);
		System.out.println(entryString);
		String decryptString = encrypt.decrypt(entryString);
		System.out.println(decryptString);
	}
}
