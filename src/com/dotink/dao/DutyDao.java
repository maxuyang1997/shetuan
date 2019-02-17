package com.dotink.dao;

import java.util.List;

import com.dotink.bean.Duty;
import com.dotink.bean.User;
import com.dotink.common.GenericDao;

public interface DutyDao extends GenericDao<Duty,Integer> {
  public List<Duty> findAll();
  //查找不是项目经理的人
  public List<User> findNotManager(String ids);
 //  public void saveManager(String dd);
}
