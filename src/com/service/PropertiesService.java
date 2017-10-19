package com.service;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Properties;

public class PropertiesService {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//System.out.println(getProperty("test.properties","VideosSrc1"));
	}
	
	public String getProperty(String ConfigName,String PropertyName) {
		//String configFile = "test.properties";
		
		String popvalue; //结果
        Properties properties = new Properties();
        InputStream is = PropertiesService.class.getClassLoader().getResourceAsStream(ConfigName);
        try {
            properties.load(is);
        } catch (IOException e) {
            e.printStackTrace();
        }

        //System.out.println(properties.getProperty("VideosSrc"));
        popvalue = properties.getProperty(PropertyName);
		
		return popvalue ;
	}
}
