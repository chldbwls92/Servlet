package com.chldbwls92.servlet.servlet.ex;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class test {
	
	List<String>animalList = new ArrayList<>();
	
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});

	
	Date now = new Date();
	
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");
	
	String dateTimeString = formatter.format(now);
}
