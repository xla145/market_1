package com.gxuwz.core.util;

import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang.StringUtils;

import javax.activation.MimetypesFileTypeMap;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CommonUtil {

	public static String getRandomNumber() {
		Random rand = new Random();
		char[] letters = new char[] { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
				'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
				'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'r', '0', '1', '2', '3', '4',
				'5', '6', '7', '8', '9' };
		String str = "";
		int index;
		boolean[] flags = new boolean[letters.length];// 默认为false
		for (int i = 0; i < 5; i++) {
			do {
				index = rand.nextInt(letters.length);
			} while (flags[index] == true);
			char c = letters[index];
			str += c;
			flags[index] = true;
		}
		return str;
	}
	
	/**
	 * sql like时防止注入
	 * @param srcStr
	 * @return
	 */
	public static String queryLikeLeft(String srcStr) {
		//适用于mysql
		srcStr = StringUtils.replace(srcStr, "\\", "\\\\");
		srcStr = StringUtils.replace(srcStr, "'", "\\'");
		srcStr = StringUtils.replace(srcStr, "_", "\\_");
		srcStr = StringUtils.replace(srcStr, "%", "\\%");		
		return "%" + srcStr;
	}

	/**
	 * sql like时防止注入
	 * @param srcStr
	 * @return
	 */
	public static String queryLikeRight(String srcStr) {
		//适用于mysql
		srcStr = StringUtils.replace(srcStr, "\\", "\\\\");
		srcStr = StringUtils.replace(srcStr, "'", "\\'");
		srcStr = StringUtils.replace(srcStr, "_", "\\_");
		srcStr = StringUtils.replace(srcStr, "%", "\\%");
		return srcStr + "%";
	}

	/**
	 * sql like时防止注入
	 * @param srcStr
	 * @return
	 */
	public static String queryLike(String srcStr) {
		//适用于mysql
		srcStr = StringUtils.replace(srcStr, "\\", "\\\\");
		srcStr = StringUtils.replace(srcStr, "'", "\\'");
		srcStr = StringUtils.replace(srcStr, "_", "\\_");
		srcStr = StringUtils.replace(srcStr, "%", "\\%");
		return "%" + srcStr + "%";
	}
	
	/**
	 * 将数组转换成sql的in查询字符串
	 * @return '1','2',''		没有数据时返回''
	 */
	public static String arrayToSqlIn(Object[] array){
		StringBuffer sqlIn = new StringBuffer("'");
		for(int i=0; i < array.length; i++){
			sqlIn.append(array[i]+"','");
		}
		sqlIn.append("'");
		return sqlIn.toString();
	}

	/**
	 *
	 * @param obj
	 * @return
	 */
	public static String nullToBlank(Object obj) {
		return null == obj ? "" : obj.toString();
	}

	/**
	 * 设置默认值
	 * @param obj
	 * @return
	 */
	public static String blankToDefault(Object obj) {
		return obj.equals("") ? "  " : obj.toString();
	}
	/**
	 * 生成id
	 *
	 * @param code 业务码 会加在id最前面
	 *
	 * @return
	 */
	public static String getId(String code){
		String extra = getStringRandom(6);
		String time = getNumberRandom(6);
		return code + "-" + time + "-" + extra;
	}
	/**
	 * 生成随机数字和字母
	 * @param length
	 * @return
	 */
	public static String getStringRandom(int length) {
		String base = UUID.randomUUID().toString().replaceAll("-", "");
		Random random = new Random();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < length; i++) {
			int number = random.nextInt(base.length());
			sb.append(base.charAt(number));
		}
		return sb.toString().toUpperCase();
	}


	/**
	 * 随机生成数字字符串
	 * @param length
	 * @return
	 */
	public static String getNumberRandom(int length) {
		char[] chars = {'1','2','3','4','5','6','7','8','9','0'};
		StringBuffer sb = new StringBuffer();
		for(int i = 0; i < length; i++){
			sb.append(chars[new Random().nextInt(chars.length)]);
		}
		return sb.toString();
	}

	/**
	 * 随机生成字符串
	 * @param length
	 * @return
	 */
	public static String getCharsRandom(int length) {
		char[] chars = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','p','q','r','s','t','u','v','w','x','y','z'};
		StringBuffer sb = new StringBuffer();
		for(int i = 0; i < length; i++){
			sb.append(chars[new Random().nextInt(chars.length)]);
		}
		return sb.toString();
	}

	/**
	 * 获取接送字符串中的字段信息
	 * @param json
	 * @param name
	 * @return
	 */
	public static String getContentFromJSON(Object json,String name){
		if (json == null) {
			return "";
		}
		JSONObject jsonObject = JSONObject.parseObject(json.toString());
		if (jsonObject == null) {
			return "";
		}
		return jsonObject.get(name).toString();
	}

	public static void main(String[] args) {
		String itemBrief = "4,5,6,7";
		List<String> items = Arrays.asList(itemBrief.split(","));

		for (int i = 0; i < items.size(); i++) {
			if (items.get(i).equalsIgnoreCase("4")) {
				items.remove(i);
			}
		}
		System.out.println(StringUtils.join(items,","));

	}

	/**
	 * 判断是否为手机号
	 * @param number
	 * @return
	 */
    public static boolean isPhoneNumber(String number){
		String regExp = "^(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$";
		Pattern p = Pattern.compile(regExp);
		Matcher m = p.matcher(number);
		return m.find();//boolean
	}


	/**
	 * 将驼峰式命名的字符串转换为下划线大写方式。如果转换前的驼峰式命名的字符串为空，则返回空字符串。</br>
	 * 例如：HelloWorld->HELLO_WORLD
	 * @param name 转换前的驼峰式命名的字符串
	 * @return 转换后下划线大写方式命名的字符串
	 */
	public static String underscoreName(String name) {
		StringBuilder result = new StringBuilder();
		if (name != null && name.length() > 0) {
			// 将第一个字符处理成大写
			result.append(name.substring(0, 1).toLowerCase());
			// 循环处理其余字符
			for (int i = 1; i < name.length(); i++) {
				String s = name.substring(i, i + 1);
				// 在大写字母前添加下划线
				if (s.equals(s.toUpperCase()) && !Character.isDigit(s.charAt(0))) {
					result.append("_");
				}
				// 其他字符直接转成大写
				result.append(s.toLowerCase());
			}
		}
		return result.toString();
	}

	/**
	 * 将下划线大写方式命名的字符串转换为驼峰式。如果转换前的下划线大写方式命名的字符串为空，则返回空字符串。</br>
	 * 例如：HELLO_WORLD->HelloWorld
	 * @param name 转换前的下划线大写方式命名的字符串
	 * @return 转换后的驼峰式命名的字符串
	 */
	public static String camelName(String name) {
		StringBuilder result = new StringBuilder();
		// 快速检查
		if (name == null || name.isEmpty()) {
			// 没必要转换
			return "";
		} else if (!name.contains("_")) {
			// 不含下划线，仅将首字母小写
			return name.substring(0, 1).toLowerCase() + name.substring(1);
		}
		// 用下划线将原始字符串分割
		String camels[] = name.split("_");
		for (String camel :  camels) {
			// 跳过原始字符串中开头、结尾的下换线或双重下划线
			if (camel.isEmpty()) {
				continue;
			}
			// 处理真正的驼峰片段
			if (result.length() == 0) {
				// 第一个驼峰片段，全部字母都小写
				result.append(camel.toLowerCase());
			} else {
				// 其他的驼峰片段，首字母大写
				result.append(camel.substring(0, 1).toUpperCase());
				result.append(camel.substring(1).toLowerCase());
			}
		}
		return result.toString();
	}

	/**
	 * 判断是否为图片
	 * @param contentType
	 * @return
	 */
	public static boolean isImg(String contentType) {
	    MimetypesFileTypeMap mtftp = new MimetypesFileTypeMap();
	    mtftp.addMimeTypes("image png tif jpg jpeg bmp");
	   	String type = contentType.split("/")[0];
	    return type.equals("image");
	}
}
