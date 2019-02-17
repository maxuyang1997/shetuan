package com.dotink.dao;

import java.util.List;

import com.dotink.bean.Activity;
import com.dotink.bean.Community;
import com.dotink.common.GenericDao;

public interface ActivityDao extends GenericDao<Activity, Integer>{
  public List<Activity>  findAll();
  public List<Community>  findCommunity();
  public void deleteActivity(int id);
  public List<Activity> findByTrim(Activity activity);
}
