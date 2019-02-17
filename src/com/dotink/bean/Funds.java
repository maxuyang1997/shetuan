package com.dotink.bean;

import java.util.Date;
import java.util.List;
//申请经费表
public class Funds {
    private int funds_id;//申请表id
	private String funds_community;//申请社团
	private String surplus_money;//尚有金额
	private String funds_money;//申请金额
	private String funds_reason;//申请理由
	private Date funds_date;//申请日期
	private String funds_people;//申请人
	private String examine_program;//审批状态
	private String examine_people;//审批人
	private String examine_date;//审批日期
	private String note;//备注
	private String examine_note;//审批备注
	
	
	
	
	
	
	
	
	public String getExamine_note() {
		return examine_note;
	}
	public void setExamine_note(String examine_note) {
		this.examine_note = examine_note;
	}
	public String getExamine_program() {
		return examine_program;
	}
	public void setExamine_program(String examine_program) {
		this.examine_program = examine_program;
	}
	public String getExamine_people() {
		return examine_people;
	}
	public void setExamine_people(String examine_people) {
		this.examine_people = examine_people;
	}
	public String getExamine_date() {
		return examine_date;
	}
	public void setExamine_date(String examine_date) {
		this.examine_date = examine_date;
	}
	public int getFunds_id() {
		return funds_id;
	}
	public void setFunds_id(int fundsId) {
		funds_id = fundsId;
	}
	
	public String getFunds_community() {
		return funds_community;
	}
	public void setFunds_community(String funds_community) {
		this.funds_community = funds_community;
	}
	public String getSurplus_money() {
		return surplus_money;
	}
	public void setSurplus_money(String surplusMoney) {
		surplus_money = surplusMoney;
	}
	public String getFunds_money() {
		return funds_money;
	}
	public void setFunds_money(String fundsMoney) {
		funds_money = fundsMoney;
	}
	public String getFunds_reason() {
		return funds_reason;
	}
	public void setFunds_reason(String fundsReason) {
		funds_reason = fundsReason;
	}
	public Date getFunds_date() {
		return funds_date;
	}
	public void setFunds_date(Date fundsDate) {
		funds_date = fundsDate;
	}
	public String getFunds_people() {
		return funds_people;
	}
	public void setFunds_people(String fundsPeople) {
		funds_people = fundsPeople;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
	
}
