package com.dotink.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dotink.bean.Community;
import com.dotink.bean.Duty;
import com.dotink.bean.User;
import com.dotink.dao.CommunityDao;
import com.dotink.service.CommunityService;
@Service("communityService")
public class CommunityServiceImpl implements CommunityService {
	private CommunityDao communityDao;
	
	@Resource
	public void setCommunityDao(CommunityDao communityDao) {
		this.communityDao = communityDao;
	}

	public Community getEntityById(Integer id) {
		return communityDao.getEntityById(id);
	}

	public Community loadEntityById(Integer id) {
		return communityDao.loadEntityById(id);
	}



	public List<Community> findAll(User user) {
		
		return communityDao.findAll(user);
	}


	public List<Duty> findDuty() {
		return communityDao.findDuty();
	}

	public Community saveEntity(Community entity) {
		return communityDao.saveEntity(entity);
	}

	public void updateEntity(Community entity) {
		communityDao.updateEntity(entity);
		
	}

	public void deleteEntity(Community entity) {
		communityDao.updateEntity(entity);
		
	}

	public List<Community> findCommunity() {
		return communityDao.findCommunity();
	}

	public void deleteCommunity(int id) {
	communityDao.deleteCommunity(id);
		
	}

	public List<Community> findByTrim(Community community) {
		return communityDao.findByTrim(community);
	}

//	public int findByCode(String communitycode) {
//		return communityDao.findByCode(communitycode);
//	}
	public User findByCode(String communitycode) {
		return communityDao.findByCode(communitycode);
	}

	public Community findByAccount(String account) {
		return communityDao.findByAccount(account);
	}

	public void deletecommunity(Community account) {
		communityDao.deletecommunity(account);
		
	}

	

}
