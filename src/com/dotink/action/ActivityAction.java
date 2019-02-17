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

import com.dotink.bean.Activity;
import com.dotink.bean.Community;
import com.dotink.bean.Duty;
import com.dotink.bean.Member;
import com.dotink.service.ActivityService;
import com.opensymphony.xwork2.ActionSupport;

@Component
public class ActivityAction extends ActionSupport implements ServletRequestAware,
		ServletResponseAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private HttpServletRequest request;

	private HttpServletResponse response;
	
    private ActivityService activityService;
	
	private Activity activity;
	
	private List<Activity>  activityList;
	
	private List<Community> communitys;
	
	private List<Duty>  dutys;
	
	private Activity updateActivity ;
	
	
	
	
	
	
	
	
	
	

   

	@Resource(name = "activityService")
	public void setActivityService(ActivityService activityService) {
		this.activityService = activityService;
	}




	public Activity getUpdateActivity() {
		return updateActivity;
	}


	public void setUpdateActivity(Activity updateActivity) {
		this.updateActivity = updateActivity;
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


    



	public ActivityService getActivityService() {
		return activityService;
	}



    


	public Activity getActivity() {
		return activity;
	}



	public void setActivity(Activity activity) {
		this.activity = activity;
	}



	public List<Activity> getActivityList() {
		return activityList;
	}



	public void setActivityList(List<Activity> activityList) {
		this.activityList = activityList;
	}



	public ActivityAction() {
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
	public String indexactivity() throws Exception { 
		
		activityList = activityService.findAll();

		return "activity_index";
	}
	//这个方法是进入到新建页面的时候去给它传一些值过去。
	public String newactivity() throws Exception{
		
		communitys = activityService.findCommunity();
		
		return "activity_new";
	}
	
	//新建会员
	public String addactivity() throws Exception{
		
		
		activity.setActivitydate(activity.getActivitydate());
		
		activityService.saveEntity(activity);
		
		return "goindexactivity";
	}
	
	//修改会员信息
	public String updateactivity() throws Exception{
		
		String id1 = request.getParameter("id");
		
		

		int id = Integer.parseInt(id1);

		updateActivity = activityService.getEntityById(id);

		request.setAttribute("updateactivity", updateActivity);
		
		return "activity_update";
	}

	//修改会员信息
	public String alertactivity() throws Exception{
		
		int id = activity.getActivity_id();
		Activity activity2 =activityService.getEntityById(id);
		activity2.setActivity_content(activity.getActivity_content());
		activity2.setHkcss_inspection(activity.getHkcss_inspection());
		activity2.setNote(activity.getNote());
		activity2.setPrincipal(activity.getPrincipal());
		activity2.setUnit(activity.getUnit());
		activity2.setVerify(activity.getVerify());
		activity2.setActivity_name(activity.getActivity_name());
		activity2.setActivity_theme(activity.getActivity_theme());

		activityService.updateEntity(activity2);

		return "goindexactivity";
	}
	
	public String deleteactivity() {

		String activityIds = request.getParameter("activityIds");

		String[] strs = activityIds.split("\\,");

		for (int i = 1; i < strs.length; i++) {
			activityService.deleteActivity(Integer.parseInt(strs[i]));
		}


		return "goindexactivity";
	}
	//查询会员数据
	public String searchactivity() throws Exception { 
		
		List activityList2 = activityService.findByTrim(activity);
		
		if(activityList2.size()==0){
			activityList = null;
		}else{
			activityList = activityList2;
		}

		return "activity_search";
	}

}
