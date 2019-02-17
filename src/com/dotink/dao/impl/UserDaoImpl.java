package com.dotink.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dotink.bean.User;
import com.dotink.common.impl.GenericDaoImpl;
import com.dotink.dao.UserDao;

@Repository("userDao")
public class UserDaoImpl extends GenericDaoImpl<User,Integer> implements UserDao {

	public List<User> getManager() {
		String hql =" from User";
		List find = hibernatetemplate.find(hql); 
		List<User> list2 = find;
		return list2;
		
	}

	@SuppressWarnings("unchecked")
	public User login(User user) {
		User user1=new User();
		String hql="from User u where u.user_account=:user_account and u.user_password=:user_password";
		String name[]={"user_account","user_password"};
		String value[]={user.getUser_account(),user.getUser_password()};
		List<User> list = hibernatetemplate.findByNamedParam(hql, name, value);
		
		if(list.size()>0){
			user1=list.get(0);
		}
		return user1;
	}

	@SuppressWarnings("unchecked")
	public User checkName(String content) {
		User user=new User();
		String hql="from User u where u.user_account=:user_account";
		String name="user_account";
		String value=content;
		List<User> list=hibernatetemplate.findByNamedParam(hql, name, value);
		
		if(list.size()>0){
			user=list.get(0);
		}
		return user;
	}

	@SuppressWarnings("unchecked")
	public User checkPassword(User user) {
		User user1=new User();
		String hql="from User u where u.user_account=:user_account";
		String name[]={"user_account"};
		String value[]={user.getUser_account()};
		List<User> list = hibernatetemplate.findByNamedParam(hql, name, value);
		
		if(list.size()>0){
			user1=list.get(0);
		}
		return user1;
	}

	@SuppressWarnings("unchecked")
	public User findPassword(User user) {
		User user1=new User();
		String hql="from User u where u.user_account=:user_account and u.user_question=:user_question and u.user_result=:user_result";
		String name[]={"user_account","user_question","user_result"};
		String value[]={user.getUser_account(),user.getUser_question(),user.getUser_result()};
		List<User> list = hibernatetemplate.findByNamedParam(hql, name, value);
		
		if(list.size()>0){
			user1=list.get(0);
		}
		return user1;
	}

	public void updateUser(User user) {

        hibernatetemplate.update(user);
		
	}

	 public User findByAccount(String account){
		 String sql = "from User where user_account = '"+account+"'";
		 
		 List<User> list = hibernatetemplate.find(sql);
		 User user = list.get(0);
		 return user;
	 }

}
