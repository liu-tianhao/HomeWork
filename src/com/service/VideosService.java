package com.service;

import java.io.File;
import java.io.IOException;

public class VideosService {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		File file = new File(".\\webroot");
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
		}
		
		
		
	}
	
	public void FilesCreate(String path){
		
		File files = new File(".\\webRoot\\videos");
		if(!files.exists()){files.delete();}
		
		File file = new File(".\\webroot");
		System.out.println(file.getPath());
		Runtime rt = Runtime.getRuntime();
		Process p;
		try {
			String pathint = "F:/workspace/HomeWork/WebRoot/videos";
			String pathsource = "G:/视频/执念师一";
			String cmd = "cmd.exe /k mklink /j "+"\""+ pathint+"\" " + "\""+ path +"\"" ;
			p = rt.exec(cmd);
			
			
			//System.out.println(cmd);
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
