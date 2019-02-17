package com.dotink.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dotink.bean.Community;
import com.dotink.bean.Duty;
import com.dotink.bean.Member;
import com.dotink.bean.User;
import com.dotink.dao.MemberDao;
import com.dotink.service.MemberService;
@Service("memberService")
public class MemberServiceImpl implements MemberService {
	private MemberDao memberDao;
	
	
	
	
	@Resource
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public void deleteEntity(Member entity) {
	    memberDao.deleteEntity(entity);

	}

	public Member getEntityById(Integer id) {
		return memberDao.getEntityById(id);
	}

	public Member loadEntityById(Integer id) {
		return memberDao.loadEntityById(id);
	}

	public Member saveEntity(Member entity) {
		return memberDao.saveEntity(entity);
	}

	public void updateEntity(Member entity) {
		memberDao.updateEntity(entity);

	}

	public List<Member> findAll(User user) {
		
		return memberDao.findAll(user);
	}

    public List<Member> findAll3(User user) {
		
		return memberDao.findAll3(user);
	}
	public List<Community> findCommunity() {
		return memberDao.findCommunity();
	}

	public List<Duty> findDuty() {
		return memberDao.findDuty();
	}

	public void deleteMember(int id) {

		memberDao.deleteMember(id);
	}

	public List<Member> findByTrim(Member member) {
		return memberDao.findByTrim(member);
	}

	public List<Community> findCommunityByState() {
		return memberDao.findCommunityByState();
	}

	public List<Community> findCommunityByUser(String useraccount) {
		
		return memberDao.findCommunityByUser(useraccount);
	}

	public List<Member> findAll2(User user,Community community) {
		return memberDao.findAll2(user,community);
	}
}
