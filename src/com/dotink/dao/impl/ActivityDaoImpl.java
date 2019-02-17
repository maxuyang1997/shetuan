package com.dotink.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dotink.bean.Activity;
import com.dotink.bean.Community;
import com.dotink.bean.Duty;
import com.dotink.bean.Member;
import com.dotink.common.impl.GenericDaoImpl;
import com.dotink.dao.ActivityDao;
@Repository("activityDao")
public class ActivityDaoImpl  extends GenericDaoImpl<Activity,Integer>  implements ActivityDao {

	public List<Activity> findAll() {
		String hql = "from Activity";
		List<Activity> ActivityList = hibernatetemplate.find(hql);
		return ActivityList;
	}

	public List<Community> findCommunity() {
		String hql = "from Community";
		List<Community> communityList = hibernatetemplate.find(hql);
		return communityList;
	}

	public List<Duty> findDuty() {
		String hql = "from Duty";
		List<Duty> dutyList = hibernatetemplate.find(hql);
		return dutyList;
	}

	public void deleteActivity(int id) {
		
		String hql= "from Activity m   where m.activity_id = "+id+"";
		
		
		List find = hibernatetemplate.find(hql);
		List <Activity> lists = find;
		
		for (int i = 0; i < lists.size(); i++) {
			
			hibernatetemplate.delete(lists.get(i));
		}
		
	}

	public List<Activity> findByTrim(Activity activity) {
		String hql ="from Activity m   where  activity_theme like '%"+activity.getActivity_theme()+"%' and activity_community like '%"+activity.getActivity_community()+"%' and" +
				" principal like '%"+activity.getPrincipal()+"%' and activity_content like '%"+activity.getActivity_content()+"%'";
		List find = hibernatetemplate.find(hql);
		List <Activity> lists = find;
		return lists;
	}
}
