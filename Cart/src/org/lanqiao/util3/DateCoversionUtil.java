package org.lanqiao.util3;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class DateCoversionUtil {

	public static  java.util.Date  strToUtil(String str) throws ParseException {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");//把固定格式的字符串转换成Java。util.Date
		
		return sdf.parse(str);
	}
	
	public static java.sql.Date utilToSQL(java.util.Date date){//1970  1   1
		
		
		return new java.sql.Date(date.getTime());
	}
	
	
	public static void main(String[] args) {
		try {
			System.out.println(DateCoversionUtil.strToUtil("2019-07-03 Mon"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			System.out.println(DateCoversionUtil.utilToSQL(DateCoversionUtil.strToUtil("2019-07-03")));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
