package com.service;

import java.io.File;
import java.io.IOException;

public class VideosService {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*File file = new File(".\\webroot");
		System.out.println(file.getPath());
		Runtime rt = Runtime.getRuntime();
		Process p;
		try {
			String pathint = "F:/workspace/HomeWork/WebRoot/videos";
			String pathsource = "G:/视频/执念师一";
			String cmd = "cmd.exe /k mklink /j "+"\""+ pathint+"\" " + "\""+ pathsource +"\"" ;
			p = rt.exec(cmd);
			//System.out.println(cmd);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		VideosService vs = new VideosService();
		vs.FilesCreate("G:/小说/小说");
		
	}
	
	public void FilesCreate(String path){
		PropertiesService ps = new PropertiesService();
		
		
		String files1;//项目目录主要参数，配置文件输入
		
		files1 = ps.getProperty("test.properties","VideosSrc1");
		System.out.println( files1);
		
		/*files1 = "C:/Program Files/Apache Software Foundation/Tomcat 8.5/webapps/Test";
		files1 = "F:/workspace/HomeWork/WebRoot";	*/
		String filesint = files1+"/videos";	//videos文件路径
		
		File files = new File(filesint);
		if(files.exists()){files.delete();}
		
		/*File file = new File(".\\webroot");
		System.out.println(file.getAbsolutePath());*/
		Runtime rt = Runtime.getRuntime();
		Process p;
		try {
			//String pathint = file.getAbsolutePath()+ "/videos";  //相对地址转绝对路径
			String cmd = "cmd.exe /k mklink /j "+"\""+ filesint+"\" " + "\""+ path +"\"" ;
			p = rt.exec(cmd);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public String[] getFiles( String path){
		
		
		String[] str;
		
		File files = new File(path);
		
		return files.list();
	}

}
