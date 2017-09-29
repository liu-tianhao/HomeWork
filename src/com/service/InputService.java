package com.service;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class InputService {

	public static void main(String[] args){
		InputService is = new InputService();
		try {
			is.TitleWrite("F", "501", "dsadasdyusdhas");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public String TitleWrite(String x,String id,String text) throws IOException{
		FileOutputStream fs = new FileOutputStream(x+":\\"+id+".txt",true);
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = df.format(new Date());//
		text = text.concat("\t"+date);
		
		int count;
        byte[] bytes = text.getBytes();
        try {
            if (!text.equals("end")) {         
                fs.write(bytes);
                fs.write("\r\n".getBytes());
            } else if (text.equals("end")) {
                fs.close();
                
        }
        }catch (Exception e){
        		fs.close();
        }

         fs.close();

		return "success";
	}
}
