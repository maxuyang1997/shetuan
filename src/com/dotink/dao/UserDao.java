package com.dotink.dao;

import java.util.List;

import com.dotink.bean.User;
import com.dotink.common.GenericDao;

public interface UserDao extends GenericDao<User, Integer>{
	   public User checkName(String content);//�����˺��Ƿ�ע��
	   public User checkPassword(User user);//�޸�����ʱ�����ԭ�����Ƿ���ȷ
	   public User login(User user);//��¼
	   public User findPassword(User user);//�һ�����
	   public List<User> getManager();
	   public void updateUser(User user);
	   public User findByAccount(String account);
}
