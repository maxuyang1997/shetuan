package com.dotink.service;

import java.util.List;

import com.dotink.bean.User;
import com.dotink.common.GenericService;

public interface UserService extends GenericService<User,Integer> {
	public List<User> getManager();
	public User checkName(String content);
   public User checkPassword(User user);//�޸�����ʱ�����ԭ�����Ƿ���ȷ
   public User login(User user);
   public User findPassword(String content);
   public User findByID(int id);
   public void updateUser(User user);
   public User findByAccount(String account);
}
