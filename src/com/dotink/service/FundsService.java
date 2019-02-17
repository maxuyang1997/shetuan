package com.dotink.service;



import java.util.List;

import com.dotink.bean.Community;
import com.dotink.bean.Funds;
import com.dotink.common.GenericService;

public interface FundsService extends GenericService<Funds,Integer> {
	
	public List<Funds> findAll();
	
	public List<Community> findCommunity();
	
	public void deleteFunds(int id);
	
	public List<Funds> findByTrim(Funds funds);

}
