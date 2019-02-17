package com.dotink.bean;

import java.util.Date;
import java.util.List;

public class User {

	private int user_ID;

	private String user_account;

	private String user_password;

	private String user_name;

	private Date user_joindate;

	private String user_gender;

	private String user_describe;

	private String user_question;

	private String user_result;

	private String user_other;
	private Duty duty;

	




	public int getUser_ID() {
		return user_ID;
	}



	public void setUser_ID(int user_ID) {
		this.user_ID = user_ID;
	}



	public String getUser_account() {
		return user_account;
	}



	public void setUser_account(String user_account) {
		this.user_account = user_account;
	}



	public String getUser_password() {
		return user_password;
	}



	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}



	public String getUser_name() {
		return user_name;
	}



	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}



	public Date getUser_joindate() {
		return user_joindate;
	}



	public void setUser_joindate(Date user_joindate) {
		this.user_joindate = user_joindate;
	}



	public String getUser_gender() {
		return user_gender;
	}



	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}



	public String getUser_describe() {
		return user_describe;
	}



	public void setUser_describe(String user_describe) {
		this.user_describe = user_describe;
	}



	public String getUser_question() {
		return user_question;
	}



	public void setUser_question(String user_question) {
		this.user_question = user_question;
	}



	public String getUser_result() {
		return user_result;
	}



	public void setUser_result(String user_result) {
		this.user_result = user_result;
	}



	public String getUser_other() {
		return user_other;
	}



	public void setUser_other(String user_other) {
		this.user_other = user_other;
	}



	public Duty getDuty() {
		return duty;
	}



	public void setDuty(Duty duty) {
		this.duty = duty;
	}



	
}
