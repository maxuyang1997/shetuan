package com.dotink.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dotink.bean.User;
import com.dotink.dao.UserDao;
import com.dotink.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	private UserDao userDao;

	@Resource
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void deleteEntity(User entity) {
		userDao.deleteEntity(entity);
	}

	public User getEntityById(Integer id) {
		return userDao.getEntityById(id);
	}

	public User loadEntityById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public User saveEntity(User entity) {
		return userDao.saveEntity(entity);
	}

	public void updateEntity(User entity) {
		userDao.updateEntity(entity);
	}

	public User login(User user) {

		return userDao.login(user);
	}

	public User checkName(String content) {
		return userDao.checkName(content);
	}

	public User findPassword(String content) {

		return userDao.checkName(content);
	}

	public User checkPassword(User user) {
		return userDao.findPassword(user);
	}

	public List<User> getManager() {

		return userDao.getManager();
	}

	public User findByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateUser(User user) {
         userDao.updateUser(user);		
	}

	public User findByAccount(String account) {
		
		return userDao.findByAccount(account);
	}

}
