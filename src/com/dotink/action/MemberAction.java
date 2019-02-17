package com.dotink.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.stereotype.Component;

import com.dotink.bean.Community;
import com.dotink.bean.Duty;
import com.dotink.bean.Member;
import com.dotink.bean.User;
import com.dotink.service.CommunityService;
import com.dotink.service.MemberService;
import com.dotink.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@Component
public class MemberAction extends ActionSupport implements ServletRequestAware,
		ServletResponseAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private HttpServletRequest request;

	private HttpServletResponse response;
	
	private MemberService  memberService;
	
	private Member member ;
	
	private List<Member>  memberList;
	
	private List<Community> communitys;
	
	private List<Duty>  dutys;
	
	private String member_code;
	
	private Member updatemember ;
	
	private UserService userService;
	
	private CommunityService communityService;
	
	
	
	
	
	
	
	
	

   


	public Member getUpdatemember() {
		return updatemember;
	}



	public void setUpdatemember(Member updatemember) {
		this.updatemember = updatemember;
	}



	public String getMember_code() {
		return member_code;
	}



	public void setMember_code(String member_code) {
		this.member_code = member_code;
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



	public List<Member> getMemberList() {
		return memberList;
	}



	public void setMemberList(List<Member> memberList) {
		this.memberList = memberList;
	}



	public Member getMember() {
		return member;
	}



	public void setMember(Member member) {
		this.member = member;
	}



	public MemberAction() {
		super();

	}
	

	
	@Resource(name = "communityService")
	public void setCommunityService(CommunityService communityService) {
		this.communityService = communityService;
	}



	@Resource(name = "memberService")
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	
	
	
	@Resource(name = "userService")
	public void setUserService(UserService userService) {
		this.userService = userService;
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
	public String indexmember() throws Exception { 
		
		User user = (User)request.getSession().getAttribute("user");
		
		String user_other = user.getUser_other();
		
		List<Community> communityList = memberService.findCommunityByUser(user.getUser_account());
		
		if(communityList.size()==0){
			int id2 =user.getDuty().getDuty_ID();
			if(id2==5||id2==1||id2==2){
				memberList = memberService.findAll(user);
			}
			if(id2==3||id2==4||user_other.equals("3")){
				memberList = memberService.findAll3(user);
			}
		}else{
			Community community2 = communityList.get(0);
			
			int id =user.getDuty().getDuty_ID();
			
			if(id==3||user_other.equals("3")){
				memberList = memberService.findAll2(user,community2);
			}else{
				memberList = memberService.findAll(user);
			}
		}
		
		
		
		
		
		

		return "member_index";
	}
	//这个方法是进入到新建页面的时候去给它传一些值过去。
	public String createmember() throws Exception{
		
		Date date  = new Date();
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmm");
		member_code = sdf2.format(date);
		request.setAttribute("member_code",member_code);
		
		communitys = memberService.findCommunityByState();
		dutys = memberService.findDuty();
		
		
		return "member_new";
	}
	
	//新建会员
	public String saveMember() throws Exception{
		
		
		String member_code = request.getParameter("member_code");
		
		User user = (User)request.getSession().getAttribute("user");
		
		member.setJoindate(member.getJoindate());
		
		member.setMember_code(member_code);
		
		member.setMember_name(user.getUser_name());
		
		String  useraccount = user.getUser_account();
		
		Community community2 = communityService.findByAccount(useraccount);
		
		if(community2==null){
			
		}else{
			communityService.deletecommunity(community2);
		}

		memberService.saveEntity(member);
		
		
		return "goupdateuser";
	}
	
	public String updateUser(){
		User user = (User)request.getSession().getAttribute("user");
		if(user.getUser_name().equals("admin")){
			
			user.getDuty().setDuty_ID(1);
			userService.updateEntity(user);
		}else{
			
			
			
			user.getDuty().setDuty_ID(4);
			userService.updateEntity(user);
		}
		
		
		return "goindexmember";
	}
	
	
	
	
	//修改会员信息
	public String updatemember() throws Exception{
		
		String id1 = request.getParameter("id");
		
		

		int id = Integer.parseInt(id1);

		updatemember = memberService.getEntityById(id);

		request.setAttribute("updatemember", updatemember);
		
		return "member_update";
	}

	//修改会员信息
	public String alertmember() throws Exception{
		
		int id = member.getMember_id();
		Member member2 = memberService.getEntityById(id);
		member2.setMember_name(member.getMember_name());
		member2.setTel(member.getTel());
		member2.setDepartment(member.getDepartment());
		member2.setDormitory(member.getDormitory());
		member2.setClasses(member.getClasses());
		member2.setNote(member.getNote());
		
		

		memberService.updateEntity(member2);

		
		return "updatesuccess";
	}
	
	public String deleteMember() {

		String memberIds = request.getParameter("memberIds");

		String[] strs = memberIds.split("\\,");

		for (int i = 1; i < strs.length; i++) {
			memberService.deleteMember(Integer.parseInt(strs[i]));
		}


		return "goindexmember";
	}

	//查询会员数据
	public String searchmember() throws Exception { 
		
		List memberList2 = memberService.findByTrim(member);
		
		if(memberList2.size()==0){
			memberList = null;
		}else{
			memberList = memberList2;
		}

		return "member_search";
	}
}
