package com.dotink.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dotink.bean.Duty;
import com.dotink.bean.User;
import com.dotink.dao.DutyDao;
import com.dotink.service.DutyService;

@Service("dutyService")
public class DutyServiceImpl implements DutyService {
	private DutyDao dutyDao;

	@Resource
	public void setDutyDao(DutyDao dutyDao) {
		this.dutyDao = dutyDao;
	}

	public void deleteEntity(Duty entity) {
		dutyDao.deleteEntity(entity);
	}

	public Duty getEntityById(Integer id) {
		return dutyDao.getEntityById(id);
	}

	public Duty loadEntityById(Integer id) {
		return dutyDao.loadEntityById(id);
	}

	public Duty saveEntity(Duty entity) {
		return dutyDao.saveEntity(entity);
	}

	public void updateEntity(Duty entity) {
		dutyDao.updateEntity(entity);
	}

	public List<Duty> findAll() {
		 
		return dutyDao.findAll();
	}

	public List<User> findNotManager(String ids) {
		 
		return dutyDao.findNotManager(ids);
	}

}
