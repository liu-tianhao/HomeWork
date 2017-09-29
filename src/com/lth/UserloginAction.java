package com.lth;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.service.InputService;

public class UserloginAction extends ActionSupport {
	private String name;
	private String pass;
	private String cont;
	InputService ips = new InputService();
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	
	int id[] = new int[41];
	
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
		
		
		for(int i = 0 ;i<=40 ; i++){
			if(id[i] == (Integer.parseInt(name)) && pass.equals("123456")){
				session.setAttribute("userList", "logging");
				return "success";
			}
		}

		return "error";
	}
	public String Textcommit(){
		System.out.print(name);
		System.out.println(cont);
		
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
	
}
