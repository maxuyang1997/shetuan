package com.dotink.service;



import java.util.List;

import com.dotink.bean.Community;
import com.dotink.bean.Duty;
import com.dotink.bean.User;
import com.dotink.common.GenericService;

public interface CommunityService extends GenericService<Community,Integer> {
  public List<Community>  findAll(User user);
  public List<Community> findCommunity();
  public List<Duty>  findDuty();
  public void deleteCommunity(int id);
  public List<Community> findByTrim(Community community);
//  public int findByCode(String communitycode);
  public User findByCode(String communitycode);
  public Community findByAccount(String  account);
  
  public void deletecommunity(Community  community);
  
  
  
}
