package com.dotink.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dotink.bean.Community;
import com.dotink.bean.Duty;
import com.dotink.bean.User;
import com.dotink.common.impl.GenericDaoImpl;
import com.dotink.dao.CommunityDao;
@Repository("communityDao")
public class CommunityDaoImpl  extends GenericDaoImpl<Community,Integer>  implements CommunityDao {


private String sql;
private Community community;
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

	public List<Community> findAll(User user) {
		int id = user.getDuty().getDuty_ID();
		if(id==3){
			sql = "from Community where founder= '"+user.getUser_name()+"'";
		}else{
			sql = "from Community ";
		}
		List<Community> communityList = hibernatetemplate.find(sql);
		return communityList;
	}

	public void deleteCommunity(int id) {
		
		String hql= "from Community m   where m.community_id = "+id+"";
		
		
		List find = hibernatetemplate.find(hql);
		List <Community> lists = find;
		
		for (int i = 0; i < lists.size(); i++) {
			
			hibernatetemplate.delete(lists.get(i));
		}
		
	}

	public List<Community> findByTrim(Community community) {
		String hql = "from Community m   where  community_name like '%"+community.getCommunity_name()+"%' and community_code like '%"+community.getCommunity_code()+"%' and" +
				"  principal like '%"+community.getPrincipal()+"%' and founder like '%"+community.getFounder()+"%'";
		List find = hibernatetemplate.find(hql);
		List <Community> lists = find;
		return lists;
	}

	public User findByCode(String communitycode) {
		String sql = "from Community where community_code ='"+communitycode+"'";
		List find = hibernatetemplate.find(sql);
		List <Community> lists = find;
		Community community  = lists.get(0);
		String account = community.getUser_account();
		String sql2 = "from User where user_account ='"+account+"'";
		List find2 = hibernatetemplate.find(sql2);
		List <User> lists2 = find;
		User user = lists2.get(0);
		return user;
	}

	public Community findByAccount(String account) {
		String sql = "from Community where user_account = '"+account+"'";
		List find = hibernatetemplate.find(sql);
		List <Community> lists = find;
		
		if(lists.size()==0){
			
			community  = new Community();
			
			
		}else{
			community  = lists.get(0);
		}
		
		return community;
	}

	
	public void deletecommunity(Community community){
		
		hibernatetemplate.delete(community);
	}

	
}
