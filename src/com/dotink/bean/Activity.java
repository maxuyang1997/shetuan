package com.dotink.bean;

import java.util.Date;
import java.util.List;

public class Activity {

	private int activity_id;//�id 
	private int activity_code;//����
	private String activity_name;
	private String activity_community;
	private String activity_theme;//�����
	private Date   activitydate;//�����
	private String verify;//���״̬
	private String  principal;//�������
	private String  hkcss_inspection;//���������
	private String  unit;//�а쵥λ
	private String activity_content;//�����
	private String note;//��ע
	
	
	public String getActivity_name() {
		return activity_name;
	}
	public void setActivity_name(String activity_name) {
		this.activity_name = activity_name;
	}
	public String getActivity_community() {
		return activity_community;
	}
	public void setActivity_community(String activity_community) {
		this.activity_community = activity_community;
	}
	public int getActivity_id() {
		return activity_id;
	}
	public void setActivity_id(int activityId) {
		activity_id = activityId;
	}
	public int getActivity_code() {
		return activity_code;
	}
	public void setActivity_code(int activity_code) {
		this.activity_code = activity_code;
	}
	public String getActivity_theme() {
		return activity_theme;
	}
	public void setActivity_theme(String activityTheme) {
		activity_theme = activityTheme;
	}
	public Date getActivitydate() {
		return activitydate;
	}
	public void setActivitydate(Date activitydate) {
		this.activitydate = activitydate;
	}
	public String getVerify() {
		return verify;
	}
	public void setVerify(String verify) {
		this.verify = verify;
	}
	public String getPrincipal() {
		return principal;
	}
	public void setPrincipal(String principal) {
		this.principal = principal;
	}
	public String getHkcss_inspection() {
		return hkcss_inspection;
	}
	public void setHkcss_inspection(String hkcssInspection) {
		hkcss_inspection = hkcssInspection;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getActivity_content() {
		return activity_content;
	}
	public void setActivity_content(String activityContent) {
		activity_content = activityContent;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
	
	
}
