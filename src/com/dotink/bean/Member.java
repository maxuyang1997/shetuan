package com.dotink.bean;

import java.util.Date;
import java.util.List;

public class Member {
  
	private int member_id;   //��Ա��id
	private String member_code; //��Ա���
	private String member_community;//  ������������
	private String member_duty;//  �������ŵ��ε�ְ��
	private String member_name;//��Ա����
	private Date   joindate;// ����ʱ��
	private String gender;// �Ա�
	private String classes;// �༶
	private String department;//Ժϵ
	private String dormitory;//����
	private String tel;//�绰
	private String note;//��ע
	
	
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int memberId) {
		member_id = memberId;
	}
	
	public String getMember_code() {
		return member_code;
	}
	public void setMember_code(String member_code) {
		this.member_code = member_code;
	}
	public String getMember_community() {
		return member_community;
	}
	public void setMember_community(String member_community) {
		this.member_community = member_community;
	}
	public String getMember_duty() {
		return member_duty;
	}
	public void setMember_duty(String member_duty) {
		this.member_duty = member_duty;
	}

	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String memberName) {
		member_name = memberName;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDormitory() {
		return dormitory;
	}
	public void setDormitory(String dormitory) {
		this.dormitory = dormitory;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
	
}
