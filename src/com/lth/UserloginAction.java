package com.lth;

import java.io.File;
import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.service.InputService;
import com.service.VideosService;

public class UserloginAction extends ActionSupport {
	private String name;
	private String pass;
	private String cont;
	
	private String filesname;
	
	private String[] videofile;
	InputService ips = new InputService();
	
	
	int id[] = new int[41];
	
	
	public static void main(String[] args) {
		UserloginAction us = new UserloginAction();
		us.VideosName();
	}
	private int[] forid(){
		int num = 501;
		for(int i = 0 ;i<=40;i++){
			id[i] = num++;
		}
		return id;
	}
	public String Login(){	//登陆
		System.out.println(name);
		id = forid();
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		
		for(int i = 0 ;i<=40 ; i++){
			if(id[i] == (Integer.parseInt(name)) && pass.equals("123456")){
				session.setAttribute("userList", id[i]);
				return "success";
			}
		}

		return "error";
	}
	public String Textcommit(){
		System.out.print(name);
		System.out.println(cont);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
			try {
					
					ips.TitleWrite("E", name, name+"   "+cont);
					//session.removeAttribute("userList");
					session.setAttribute("userList", "query");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		return "success";
	}
	
	public String VideosName(){
		VideosService vf = new VideosService();
		
		videofile = vf.getFiles(filesname);
		
		for(String name : videofile){
			
			System.out.println(name);
		}
		
		return "success";
	}
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public String getFilesname() {
		return filesname;
	}
	public void setFilesname(String filesname) {
		this.filesname = filesname;
	}
	public String[] getVideofile() {
		return videofile;
	}
	public void setVideofile(String[] videofile) {
		this.videofile = videofile;
	}
	
	
}