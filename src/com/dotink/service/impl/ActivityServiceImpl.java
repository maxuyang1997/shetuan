package com.dotink.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dotink.bean.Activity;
import com.dotink.bean.Community;
import com.dotink.dao.ActivityDao;
import com.dotink.service.ActivityService;
@Service("activityService")
public class ActivityServiceImpl implements ActivityService {
	private ActivityDao activityDao;
	
	
	@Resource
	public void setActivityDao(ActivityDao activityDao) {
		this.activityDao = activityDao;
	}

	public Activity loadEntityById(Integer id) {
		return activityDao.loadEntityById(id);
	}

	public Activity getEntityById(Integer id) {
		return activityDao.getEntityById(id);
	}

	public Activity saveEntity(Activity entity) {
		return activityDao.saveEntity(entity);
	}

	public void updateEntity(Activity entity) {
	    activityDao.updateEntity(entity);
		
	}

	public void deleteEntity(Activity entity) {
	    activityDao.deleteEntity(entity);
		
	}

	public List<Activity> findAll() {
		return activityDao.findAll();
	}

	public List<Community> findCommunity() {
		return activityDao.findCommunity();
	}
	
	public void deleteActivity(int id){
		activityDao.deleteActivity(id);
	}

	public List<Activity> findByTrim(Activity activity) {
		return activityDao.findByTrim(activity);
	}
	
	


}
