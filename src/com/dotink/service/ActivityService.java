package com.dotink.service;



import java.util.List;

import com.dotink.bean.Activity;
import com.dotink.bean.Community;
import com.dotink.common.GenericService;

public interface ActivityService extends GenericService<Activity,Integer> {
	
	public List<Activity> findAll();
	public List<Community> findCommunity();
	public void deleteActivity(int id);
	public List<Activity> findByTrim(Activity activity);

}
