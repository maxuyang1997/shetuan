package com.dotink.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dotink.bean.Duty;
import com.dotink.bean.User;
import com.dotink.common.impl.GenericDaoImpl;
import com.dotink.dao.DutyDao;

@Repository("dutyDao")
public class DutyDaoImpl extends GenericDaoImpl<Duty,Integer> implements DutyDao {

	public List<Duty> findAll() {
		List<Duty> dutys= hibernatetemplate.find("from Duty d");
		return dutys;
	}

	public List<User> findAllManager() {
		 
		
		return null;
	}

	public List<User> findNotManager(String ids) {
		 String hql="from User u where u.user_ID not in("+ids+")";
		 List<User> users=hibernatetemplate.find(hql);
		return users;
	}


}
