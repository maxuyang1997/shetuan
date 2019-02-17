package com.dotink.dao;

import java.util.List;

import com.dotink.bean.Community;
import com.dotink.bean.Duty;
import com.dotink.bean.Member;
import com.dotink.bean.User;
import com.dotink.common.GenericDao;

public interface CommunityDao extends GenericDao<Community, Integer>{
	public List<Community> findAll(User user);
	public List<Community> findCommunity();
	public List<Duty>  findDuty();
	public void deleteCommunity(int id);
	public List<Community> findByTrim(Community community);
//	public int findByCode(String communitycode);
	public User findByCode(String communitycode);
	public Community findByAccount(String account);
	public void deletecommunity(Community account);
	
}
