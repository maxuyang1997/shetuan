package com.dotink.dao;

import java.util.List;

import com.dotink.bean.Community;
import com.dotink.bean.Funds;
import com.dotink.common.GenericDao;

public interface FundsDao extends GenericDao<Funds, Integer>{
	public List<Funds> findAll();
    public List<Community> findCommunity();
    public void deleteFunds(int id);
    public List<Funds> findByTrim(Funds funds);
}
