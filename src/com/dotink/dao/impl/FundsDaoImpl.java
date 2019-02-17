package com.dotink.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dotink.bean.Activity;
import com.dotink.bean.Community;
import com.dotink.bean.Duty;
import com.dotink.bean.Funds;
import com.dotink.bean.Member;
import com.dotink.common.impl.GenericDaoImpl;
import com.dotink.dao.FundsDao;
@Repository("fundsDao")
public class FundsDaoImpl  extends GenericDaoImpl<Funds,Integer>  implements FundsDao {

	public List<Funds> findAll() {
		String hql = "from Funds";
		List<Funds> fundsList = hibernatetemplate.find(hql);
		return fundsList;
	}

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

	public void deleteFunds(int id) {
	String hql= "from Funds m   where m.funds_id = "+id+"";
		
		
		List find = hibernatetemplate.find(hql);
		List <Funds> lists = find;
		
		for (int i = 0; i < lists.size(); i++) {
			
			hibernatetemplate.delete(lists.get(i));
		}
		
	}

	public List<Funds> findByTrim(Funds funds) {
		System.out.println(funds.getFunds_community()); 
//		String hql= "from Funds m   where funds_community like '%"+funds.getFunds_community()+"%' and examine_people like '%"+funds.getExamine_people()+"%' and" +
//				" funds_people like '%"+funds.getFunds_people()+"%'  and funds_reason like '%"+funds.getFunds_reason()+"%'";
		String hql= "from Funds  where funds_community like '%"+funds.getFunds_community()+"%' and funds_people like '%"+funds.getFunds_people()+"%' and funds_reason like '%"+funds.getFunds_reason()+"%' ";
		List find = hibernatetemplate.find(hql);
		List <Funds> lists = find;
		return lists;
	}

}
