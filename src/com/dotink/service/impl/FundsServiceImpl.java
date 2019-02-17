package com.dotink.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dotink.bean.Community;
import com.dotink.bean.Funds;
import com.dotink.dao.FundsDao;
import com.dotink.service.FundsService;
@Service("fundsService")
public class FundsServiceImpl implements FundsService {
    private FundsDao fundsDao;
    
    
	@Resource
	public void setFundsDao(FundsDao fundsDao) {
		this.fundsDao = fundsDao;
	}
	public Funds loadEntityById(Integer id) {
		return fundsDao.loadEntityById(id);
	}

	

	public Funds getEntityById(Integer id) {
		return fundsDao.getEntityById(id);
	}

	public Funds saveEntity(Funds entity) {
		return fundsDao.saveEntity(entity); 
	}

	public void updateEntity(Funds entity) {
		fundsDao.updateEntity(entity);
		
	}

	public void deleteEntity(Funds entity) {
		fundsDao.deleteEntity(entity);
		
	}
	public List<Funds> findAll() {
		return fundsDao.findAll();
	}
	public List<Community> findCommunity() {
		return fundsDao.findCommunity();
	}
	
	public void deleteFunds(int id){
		fundsDao.deleteFunds(id);
	}
	public List<Funds> findByTrim(Funds funds) {
		return fundsDao.findByTrim(funds);
	}
	
	
	
	


}
