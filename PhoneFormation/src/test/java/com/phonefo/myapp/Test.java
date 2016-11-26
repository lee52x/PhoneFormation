package com.phonefo.myapp;

import java.util.Calendar;
import java.util.Date;

public class Test {
	
	public static void main(String[] args) {
		
		String a="2015년04월";
		System.out.println(a);
		
		//출고가격: 755700
		
		Calendar cal=Calendar.getInstance();
		System.out.println(cal.get(Calendar.YEAR));
		System.out.println(cal.get(Calendar.MONTH)+1);
		
		
	}

}
