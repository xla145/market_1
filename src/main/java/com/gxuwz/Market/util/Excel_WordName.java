package com.gxuwz.Market.util;

import java.util.Calendar;

public class Excel_WordName {

	/**
	 *@Name:Excel_WordName.java
	  @Description:
	  @author:彭定旭
	  @version:v1.00（版本号）
	  @datetime:2014-3-24
	  @parameters:
	  @return:
	 */
	public static void main(String[] args) {

		String str=".doc";
		System.out.println(new Excel_WordName().getSuffixName(str));
	}

	/**抽取方法获取导出的Excel、或者Word名 
	 * str  --传进来的后缀名：.xlsx、.docx 必须带点.
	 *  **/
	public String getSuffixName(String str)
	{
		
		String strName="";
		Calendar c = Calendar.getInstance();  
    	int year = c.get(Calendar.YEAR);  
    	int month = c.get(Calendar.MONTH) + 1; 
    	String month_ = new String("" + month);  
    	if (month < 10) 
    	 {  
    	    month_ = "0" + month;  
         }  
    	 int day = c.get(Calendar.DAY_OF_MONTH);  
         String day_ = new String("" + day);  
    	 if (day < 10) 
    	 {  
    	   day_ = "0" + day;  
    	 }  
    	 /**文件名**/
    	 strName=year+"-"+month_+"-"+day_+str;
		 return strName;
	}
}
