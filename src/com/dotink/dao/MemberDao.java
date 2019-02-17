package com.dotink.dao;

import java.util.List;

import com.dotink.bean.Community;
import com.dotink.bean.Duty;
import com.dotink.bean.Member;
import com.dotink.bean.User;
import com.dotink.common.GenericDao;

public interface MemberDao extends GenericDao<Member, Integer>{
	public List<Member> findAll(User user);
	public List<Member> findAll3(User user);
	public List<Member>  findAll2(User user,Community community);
	public List<Community> findCommunity();
	public List<Duty>  findDuty();
	public void deleteMember(int id);
	public List<Member> findByTrim(Member member);
	public List<Community> findCommunityByState();
	public List<Community> findCommunityByUser(String useraccount);
}
