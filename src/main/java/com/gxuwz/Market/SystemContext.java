package com.gxuwz.Market;

import org.springframework.security.crypto.password.StandardPasswordEncoder;

/**
 * 全局常量配置
 * @author Mr.xucb
 * @version 1.0
 */
public final class SystemContext {
	public static final Integer DEFUALT_PAGE_SIZE=12;//默认分页数,Result有一个BUG，
	public static final Integer DEFUALT_PAGE_NUM=1;//默认分页码

	public static final String ACTION_CONTENT_TYPE="application/json;charset=utf-8";//默认传输编码，注意utf-8

	private static final String SITE_WIDE_SECRET = "GXUWZ_0774_KEY";
	private static final StandardPasswordEncoder encoder = new StandardPasswordEncoder(SITE_WIDE_SECRET);
	
	/**
	 * 密码加密
	 * @param rawPasswd 需要加密的密码
	 * @return
	 */
	public static String passwdEncryption(String rawPasswd){
		String str = encoder.encode(rawPasswd);
		return str;
	}

	/**
	 * 密码校验
	 * @param rawPasswd 明文密码（需要匹配的用户输入的那份）
	 * @param password 数据库保存的加密的密码
	 * @return true = 通过，fasle=失败
	 */
	public static boolean passwdDecryption(String rawPasswd, String password){
		boolean isT = false;
		try {
			isT = encoder.matches(rawPasswd, password);
		} catch (Exception e) {
			System.out.println("密码匹配："+e);
		}
		return isT;
	}

	public static void main(String[] args){

		System.out.println(passwdEncryption("123456"));
	}

}
