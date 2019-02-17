package com.dotink.service;

import java.util.List;

import com.dotink.bean.Duty;
import com.dotink.bean.User;
import com.dotink.common.GenericService;

public interface DutyService extends GenericService<Duty,Integer> {
   public List<Duty> findAll();
   //���Ҳ�����Ŀ�������
   public List<User> findNotManager(String ids);
    
}
