package com.dotink.dao;

import java.util.List;

import com.dotink.bean.User;
import com.dotink.common.GenericDao;

public interface UserDao extends GenericDao<User, Integer>{
	   public User checkName(String content);//检查该账号是否被注册
	   public User checkPassword(User user);//修改密码时，检查原密码是否正确
	   public User login(User user);//登录
	   public User findPassword(User user);//找回密码
	   public List<User> getManager();
	   public void updateUser(User user);
	   public User findByAccount(String account);
}
