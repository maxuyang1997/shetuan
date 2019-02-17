package com.dotink.bean;

import java.util.Date;
//社团
public class Community {
	private int community_id;        //社团编号
	private String community_name;    //社团名称
	private String  community_code;  //社团特征码
	private String  principal;   // 负责人
	private String  founder;   // 创始人
	private String unit;      //单位
	private Date  founddate;   //成立日期
	private String  quale;     //社团性质
	private String  intro;     //社团简介
	private String  money;     //社团收费
	private String  community_money;     //社团收费
	private String   note;          //备注
	private String  state;  //状态
	private String user_account;
	
	
	
	
	
	public String getUser_account() {
		return user_account;
	}
	public void setUser_account(String user_account) {
		this.user_account = user_account;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getCommunity_id() {
		return community_id;
	}
	public void setCommunity_id(int communityId) {
		community_id = communityId;
	}
	public String getCommunity_name() {
		return community_name;
	}
	public void setCommunity_name(String communityName) {
		community_name = communityName;
	}
	public String getCommunity_code() {
		return community_code;
	}
	public void setCommunity_code(String communityCode) {
		community_code = communityCode;
	}
	public String getPrincipal() {
		return principal;
	}
	public void setPrincipal(String principal) {
		this.principal = principal;
	}
	public String getFounder() {
		return founder;
	}
	public void setFounder(String founder) {
		this.founder = founder;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public Date getFounddate() {
		return founddate;
	}
	public void setFounddate(Date founddate) {
		this.founddate = founddate;
	}
	public String getQuale() {
		return quale;
	}
	public void setQuale(String quale) {
		this.quale = quale;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getCommunity_money() {
		return community_money;
	}
	public void setCommunity_money(String community_money) {
		this.community_money = community_money;
	}

}
