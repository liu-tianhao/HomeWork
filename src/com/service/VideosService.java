package com.service;

import java.io.File;

public class VideosService {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		
		
	}
	
	
	
	public String[] getFiles( String path){
		
		
		String[] str;
		
		File files = new File(path);
		
		return files.list();
	}

}
