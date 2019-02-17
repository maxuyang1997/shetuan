package com.dotink.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.stereotype.Component;

import com.dotink.bean.Community;
import com.dotink.bean.Duty;
import com.dotink.bean.Funds;
import com.dotink.bean.User;
import com.dotink.service.FundsService;
import com.opensymphony.xwork2.ActionSupport;

@Component
public class FundsAction extends ActionSupport implements ServletRequestAware,
		ServletResponseAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private HttpServletRequest request;

	private HttpServletResponse response;
	
    
    private FundsService fundsService;
	
	private Funds funds;
	
	private List<Funds> fundsList;
	
	
	
	private List<Community> communitys;
	
	private List<Duty>  dutys;
	
	private Funds updateFunds ;
	
	private Funds fundsApprove;
	
	private User user;
	
	private String date2;
	
	
	
	
	
	public String getDate2() {
		return date2;
	}


	public void setDate2(String date2) {
		this.date2 = date2;
	}


	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}


	public Funds getFundsApprove() {
		return fundsApprove;
	}



	public void setFundsApprove(Funds fundsApprove) {
		this.fundsApprove = fundsApprove;
	}






	@Resource(name = "fundsService")
	public void setFundsService(FundsService fundsService) {
		this.fundsService = fundsService;
	}






	public Funds getUpdateFunds() {
		return updateFunds;
	}






	public void setUpdateFunds(Funds updateFunds) {
		this.updateFunds = updateFunds;
	}






	public List<Community> getCommunitys() {
		return communitys;
	}



	public void setCommunitys(List<Community> communitys) {
		this.communitys = communitys;
	}



	public List<Duty> getDutys() {
		return dutys;
	}



	public void setDutys(List<Duty> dutys) {
		this.dutys = dutys;
	}


    



	


    


	



	public Funds getFunds() {
		return funds;
	}




	public void setFunds(Funds funds) {
		this.funds = funds;
	}



	public List<Funds> getFundsList() {
		return fundsList;
	}




	public void setFundsList(List<Funds> fundsList) {
		this.fundsList = fundsList;
	}




	public FundsAction() {
		super();

	}

	
	


	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public String execute() throws Exception {
		return super.execute();
	}


	
	//查询会员数据
	public String indexfunds() throws Exception { 
		
		fundsList = fundsService.findAll();

		return "funds_index";
	}
	//这个方法是进入到新建页面的时候去给它传一些值过去。
	public String newfunds() throws Exception{
		
		communitys = fundsService.findCommunity();
		
		return "funds_new";
	}
	
	//新建会员
	public String savefunds() throws Exception{
		
		
		funds.setExamine_program("待审批");
		
		fundsService.saveEntity(funds);
		
		return "goindexfunds";
	}
	
	//修改会员信息
	public String updatefunds() throws Exception{
		
		String id1 = request.getParameter("id");

		int id = Integer.parseInt(id1);

		updateFunds = fundsService.getEntityById(id);

		request.setAttribute("updateFunds", updateFunds);
		
		return "funds_update";
	}

	//修改会员信息
	public String alertfunds() throws Exception{
		
		int id = funds.getFunds_id();
		Funds funds2 =fundsService.getEntityById(id);
		funds2.setFunds_money(funds.getFunds_money());
		funds2.setNote(funds.getNote());

		fundsService.updateEntity(funds2);

		return "goindexfunds";
	}
	
	public String deletefunds() {

		String fundsIds = request.getParameter("fundsIds");

		String[] strs = fundsIds.split("\\,");

		for (int i = 1; i < strs.length; i++) {
			fundsService.deleteFunds(Integer.parseInt(strs[i]));
		}


		return "goindexfunds";
	}
	//查询会员数据
	public String indexapprove() throws Exception { 
		
		String id = request.getParameter("id");
	    fundsApprove =fundsService.getEntityById(Integer.parseInt(id));
	    user = (User)request.getSession().getAttribute("user");
	    Date date = new Date();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		date2 = sdf.format(date);
		
		return "funds_examine";
	}
	
	//修改会员信息
	public String saveapprove() throws Exception{
		
		//int id = funds.getFunds_id();
		
		String idstr = request.getParameter("id"); 
		
		
		
		Funds funds2 =fundsService.getEntityById(Integer.parseInt(idstr)); 
		
		String state = funds.getExamine_program();
		if(state.equals("同意")){
			funds2.setExamine_program("通过");
		}else{
			funds2.setExamine_program("未通过");
		}

		
		fundsService.updateEntity(funds2);

		return "goindexfunds";
	}
	//查询会员数据
	public String searchfunds() throws Exception { 
		
		List fundsList2 = fundsService.findByTrim(funds);
		
		if(fundsList2.size()==0){
			fundsList = null;
		}else{
			fundsList = fundsList2;
		}

		return "funds_search";
	}

}
