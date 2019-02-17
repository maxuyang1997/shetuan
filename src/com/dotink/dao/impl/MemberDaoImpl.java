package com.dotink.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dotink.bean.Community;
import com.dotink.bean.Duty;
import com.dotink.bean.Member;
import com.dotink.bean.User;
import com.dotink.common.impl.GenericDaoImpl;
import com.dotink.dao.MemberDao;
@Repository("memberDao")
public class MemberDaoImpl  extends GenericDaoImpl<Member,Integer>  implements MemberDao {
	private String sql;

	public List<Member> findAll(User user) {
		
		
			sql = "from Member ";
		
		
		List<Member> memberList = hibernatetemplate.find(sql);
		return memberList;
	}
	public List<Member> findAll3(User user) {
		
		
		sql = "from Member where member_name='"+user.getUser_name()+"' ";
	
	
	List<Member> memberList = hibernatetemplate.find(sql);
	return memberList;
}
	public List<Member> findAll2(User user,Community community) {
		
		int id = user.getDuty().getDuty_ID();
		if(id==3||user.getUser_other().equals("3")){
			
			sql = "from Member where member_community= '"+community.getCommunity_name()+"'";
		}else{
			sql = "from Member where member_name= '"+user.getUser_name()+"'";
		}
		
		List<Member> memberList = hibernatetemplate.find(sql);
		return memberList;
	}
	public List<Community> findCommunity() {
		String hql = "from Community";
		List<Community> communityList = hibernatetemplate.find(hql);
		return communityList;
	}

	public List<Community> findCommunityByUser(String useraccount) {
		String hql = "from Community where user_account = '"+useraccount+"'";
		List<Community> communityList = hibernatetemplate.find(hql);
		return communityList;
	}
	public List<Duty> findDuty() {
		
		String hql = "from Duty where duty_ID not in (1,2,3,5)";
		
		List<Duty> dutyList = hibernatetemplate.find(hql);
		return dutyList;
	}
	
	public void deleteMember(int id) {
		
		String hql= "from Member m   where m.member_id = "+id+"";
		
		
		List find = hibernatetemplate.find(hql);
		List <Member> lists = find;
		
		for (int i = 0; i < lists.size(); i++) {
			
			hibernatetemplate.delete(lists.get(i));
		}
		
	}

	public List<Member> findByTrim(Member member) {
		String hql="from Member m   where member_name like '%"+member.getMember_name()+"%' and member_community like '%"+member.getMember_community()+"%' and " +
				" classes like '%"+member.getClasses()+"%' and dormitory like '%"+member.getDormitory()+"%' ";
		List find = hibernatetemplate.find(hql);
		List <Member> lists = find;
		return lists;
	}
	public List<Community> findCommunityByState() {
		String sql = "from Community where state = 'Í¨¹ý'";
		List find = hibernatetemplate.find(sql);
		List <Community> lists = find;
		return lists;
	}



}
