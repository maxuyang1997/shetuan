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
import com.dotink.bean.User;
import com.dotink.service.CommunityService;
import com.dotink.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@Component
public class CommunityAction extends ActionSupport implements ServletRequestAware,
		ServletResponseAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private HttpServletRequest request;

	private HttpServletResponse response;
	
	private CommunityService  communityService;
	
    private Community community;
    
	private List<Community>  communityList;
	
	private List<Community> communitys;
	
	private List<Duty>  dutys;
	
	private String community_code;
	
    private Community updatecommunity; 
    
    private UserService userService;
	
	
	
	
	
	
	
	
	
	

   


	public Community getUpdatecommunity() {
		return updatecommunity;
	}



	public void setUpdatecommunity(Community updatecommunity) {
		this.updatecommunity = updatecommunity;
	}




	public String getCommunity_code() {
		return community_code;
	}



	public void setCommunity_code(String community_code) {
		this.community_code = community_code;
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



   


	public List<Community> getCommunityList() {
		return communityList;
	}



	public void setCommunityList(List<Community> communityList) {
		this.communityList = communityList;
	}



   

	public Community getCommunity() {
		return community;
	}



	public void setCommunity(Community community) {
		this.community = community;
	}



	public CommunityAction() {
		super();

	}

	
	
     


	

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	@Resource(name = "communityService")
	public void setCommunityService(CommunityService communityService) {
		this.communityService = communityService;
	}

    
	@Resource(name = "userService")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}



	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public String execute() throws Exception {
		return super.execute();
	}


	
	//查询会员数据
	public String indexcommunity() throws Exception { 
		User user = (User)request.getSession().getAttribute("user");
		
		communityList = communityService.findAll(user);

		return "community_index";
	}
	//这个方法是进入到新建页面的时候去给它传一些值过去。
	public String newcommunity() throws Exception{
		
		
		Date date  = new Date();
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmss");
		community_code = sdf2.format(date);
		request.setAttribute("community_code",community_code);
		return "community_new";
	}
	
	//新建会员
	public String savecommunity() throws Exception{
		
		
		String community_code = request.getParameter("community_code");
		
		User user2 =(User) request.getSession().getAttribute("user");
		
		community.setCommunity_code(community_code);
		
		community.setState("待审核");
		
		community.setUser_account(user2.getUser_account()); 
		
		communityService.saveEntity(community);
		
		
//		User user = (User)request.getSession().getAttribute("user");
//		if(user.getUser_name().equals("admin")){
//			user.getDuty().setDuty_ID(1);
//			userService.updateEntity(user);
//		}else{
//			
//			user.getDuty().setDuty_ID(3);
//			userService.updateEntity(user);
//		}
		
		return "goindexcommunity";
	}
	
	public String updateUser(){
		String communitycode = request.getParameter("communitycode");
//		int userid = communityService.findByCode(communitycode);
//		User user2 = userService.findByID(userid);
		User user2 = communityService.findByCode(communitycode); 
		
		
		if(user2.getUser_name().equals("admin")){
			user2.getDuty().setDuty_ID(1);
			
			userService.updateEntity(user2);
		}else{
			
			user2.getDuty().setDuty_ID(3);
			userService.updateEntity(user2);
		}
		
		
		return "goindexcommunity";
	}
	
	
	//修改会员信息
	public String updatecommunity() throws Exception{
		
		String id1 = request.getParameter("id");

		int id = Integer.parseInt(id1);

		updatecommunity = communityService.getEntityById(id);

		request.setAttribute("updatecommunity", updatecommunity);
		
		
		return "community_update";
	}
	//审批会员信息
	public String examinecommunity() throws Exception{
		
		String id1 = request.getParameter("id");

		int id = Integer.parseInt(id1);

		updatecommunity = communityService.getEntityById(id);

		request.setAttribute("updatecommunity", updatecommunity);
		
		return "community_examine";
	}

	//修改会员信息
	public String alertcommunity() throws Exception{
		
	
		
		int id = community.getCommunity_id();
		Community community2 = communityService.getEntityById(id);
		
	    community2.setCommunity_name(community.getCommunity_name());
	    community2.setPrincipal(community.getPrincipal());
	    community2.setUnit(community.getUnit());
	    community2.setCommunity_money(community.getCommunity_money());
	    community2.setIntro(community.getIntro());
	    community2.setNote(community.getNote());
	   
		communityService.updateEntity(community2);

		return "goindexcommunity";
	}
	
	//审核结果
	public String approvecommunity() throws Exception{
		
		int id = community.getCommunity_id();
		Community community2 = communityService.getEntityById(id);
		
	
		
		if(community.getState().equals("同意")){
			
			community2.setState("通过");
			
		}else{
             community2.setState("未通过");
			
		}
		
		request.getSession().setAttribute("community2", community2);

		communityService.updateEntity(community2);
		
		return "goupdateduty";
	}
	
	
	public String updateDuty(){
		
		Community community2 =(Community) request.getSession().getAttribute("community2");
		
		String communitycode = community2.getCommunity_code();
		
		String useraccount = community2.getUser_account();
		
		User user2 = userService.findByAccount(useraccount);
		
		
		if(user2.getUser_name().equals("admin")){
//			user2.getDuty().setDuty_ID(1);
			userService.updateUser(user2);
		}else{
			
//			user2.getDuty().setDuty_ID(3);
			
			
//			Duty duty = user2.getDuty();
//			duty.setDuty_ID(3);
//			user2.setDuty(duty);
			
			user2.setUser_other("3");
			userService.updateUser(user2);
			
		}
		
		return "goindexcommunity";
		
	}
	
	public String deletecommunity() {

		String communityIds = request.getParameter("communityIds");

		String[] strs = communityIds.split("\\,");

		for (int i = 1; i < strs.length; i++) {
			communityService.deleteCommunity(Integer.parseInt(strs[i]));
		}

		return "goindexcommunity";
	}

	//查询会员数据
	public String searchcommunity() throws Exception { 
		
		List communityList2 = communityService.findByTrim(community);
		
		if(communityList2.size()==0){
			communityList = null;
		}else{
			communityList = communityList2;
		}

		return "community_search";
	}
}
