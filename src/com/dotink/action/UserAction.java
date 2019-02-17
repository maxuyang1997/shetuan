package com.dotink.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.stereotype.Component;

import com.dotink.bean.Duty;
import com.dotink.bean.User;
import com.dotink.service.DutyService;
import com.dotink.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@Component
public class UserAction extends ActionSupport implements ServletRequestAware,
		ServletResponseAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private User user;

	private HttpServletRequest request;

	private HttpServletResponse response;

	private DutyService dutyService;

	private UserService userService;


	private String content;

	private List<Duty> dutys;

	public UserAction() {
		super();

	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
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

	public String register() throws Exception {
		Date date = new Date();
		user.setUser_joindate(date);
		userService.saveEntity(user);
		return "login";
	}
//��¼
	public String login() throws Exception {

		if (user == null) {
			Cookie[] cookies = request.getCookies();
			for (int i = 0; cookies != null && i < cookies.length; i++) {
				if (cookies[i].getName().equals("user")) {
					String value = cookies[i].getValue();

					String value1[] = value.split(",");
					user = new User();
					user.setUser_account(value1[0]);
					user.setUser_password(value1[1]);

				}
			}
		}
		if (user == null) {
			return "login";

		}

		User user1 = userService.login(user);
		if (user1.getUser_ID() == 0) {
			this.addFieldError("error", "�û������������");
			return "error";
		}

//		List<Duty> dutys = user1.getDuty();
//
//		Duty duty1 = user1.getDuty();
//		dutys.add(duty1);
//		for (int i = 0; i < dutys.size(); i++) {
//			Duty duty4 = dutys.get(i);
//			for (int j = i + 1; j < dutys.size(); j++) {
//				Duty duty5 = dutys.get(j);
//				if (duty4.getDuty_ID() == duty5.getDuty_ID()) {
//					dutys.remove(j);
//					j--;
//
//				}
//			}
//		}
//		user1.setDutys(dutys);
//		String other="false";
//		for (int i = 0; i < dutys.size(); i++) {
//			Duty duty=dutys.get(i);
//			if(duty.getDuty_ID()==1){
//				other="true";
//			}
//		}
//		user1.setUser_other(other);

		/*Project project = projectService.getEntityById(1);
		request.getSession().setAttribute("project", project);*/
 
		request.getSession().setAttribute("user", user1);//���û���Ϣ�ŵ�session��
		if (content != null) {
			Cookie cookie = new Cookie("user", user1.getUser_account() + ","
					+ user1.getUser_password());
			cookie.setMaxAge(14 * 24 * 3600);
			cookie.setPath(request.getContextPath());
			response.addCookie(cookie);
		}
		return "goupdateuser";
	}
	
	
	public String updateUser(){
		User user = (User)request.getSession().getAttribute("user");
		if(user.getUser_other().equals("3")){
			if(user.getUser_name().equals("admin")){
				
				user.getDuty().setDuty_ID(1);
				userService.updateEntity(user);
			}else{
				
				
				
				user.getDuty().setDuty_ID(4);
				userService.updateEntity(user);
			}
		}else{
			
		}
	
		
		
		return "main";
	}
	
//�����û����Ƿ����
	public String checkName() throws Exception {
		User user1 = userService.checkName(content);
		response.setContentType("text/html;charset=utf-8");
		if (user1.getUser_ID() == 0) {
			response.getWriter().write("1");
		} else {
			response.getWriter().write("0");
		}

		return null;
	}
//�һ�����
	public String findpassword() throws Exception {

		User user1 = userService.findPassword(content);
		response.setContentType("text/html;charset=utf-8");

		response.getWriter().write(
				user1.getUser_question() + "#" + user1.getUser_result() + "#"
						+ user1.getUser_password());

		return null;
	}

	//�޸�����
	public String updatePassword() throws Exception {
		User user1 = (User) request.getSession().getAttribute("user");
		user1=userService.getEntityById(user1.getUser_ID());
		
		user1.setUser_password(content);
		userService.updateEntity(user1);
		return "login";
	}
   //�޸�����
	public String updateDatum() throws Exception {
		User user1 = (User) request.getSession().getAttribute("user");
		user1=userService.getEntityById(user1.getUser_ID());
		
		user1.setUser_name(user.getUser_name());
		user1.setUser_name(user.getUser_name());
		user1.setUser_gender(user.getUser_gender());
		user1.setUser_question(user.getUser_question());
		user1.setUser_result(user.getUser_result());
		
		userService.updateEntity(user1);
		
	   request.getSession().setAttribute("user",user1);
		
		return "personalMessage";
	}
//�����ע��ʱ �ҵ����е�ְ��
	public String findDuty() throws Exception {
		dutys = dutyService.findAll();
		for (int i = 0; i < dutys.size(); i++) {
			Duty duty = dutys.get(i);
			if (duty.getDuty_ID() == 1) {
				dutys.remove(i);
				i--;

			}
		}

		return "register";
	}
//���ע��ʱ
	public String logout() throws Exception {
		request.getSession().invalidate();

		return "login";
	}

	public List<Duty> getDutys() {
		return dutys;
	}

	public void setDutys(List<Duty> dutys) {
		this.dutys = dutys;
	}

	@Resource
	public void setDutyService(DutyService dutyService) {
		this.dutyService = dutyService;
	}


}
