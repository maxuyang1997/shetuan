package com.dotink.common.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.dotink.common.GenericDao;

public class GenericDaoImpl<T, PK extends Serializable> implements GenericDao<T, PK> {
	private Class<T> Jclass = null;
	protected HibernateTemplate hibernatetemplate;
	
	@Resource
	public void setHibernatetemplate(HibernateTemplate hibernatetemplate) {
		this.hibernatetemplate = hibernatetemplate;
	}

	public HibernateTemplate getHibernatetemplate() {
		return hibernatetemplate;
	}

	@SuppressWarnings("unchecked")
	public GenericDaoImpl() {
		this.setJclass((Class<T>) ((ParameterizedType)this.getClass().getGenericSuperclass()).getActualTypeArguments()[0]);
	}

	public Class<T> getJclass() {
		return Jclass;
	}

	public void setJclass(Class<T> jclass) {
		Jclass = jclass;
	}

	public void deleteEntity(T entity) {
		// TODO Auto-generated method stub
		hibernatetemplate.delete(entity);
	}

	@SuppressWarnings("unchecked")
	public T getEntityById(PK id) {
		// TODO Auto-generated method stub
		return (T) hibernatetemplate.get(Jclass,id);
	}

	@SuppressWarnings("unchecked")
	public T loadEntityById(PK id) {
		// TODO Auto-generated method stub
		return (T) hibernatetemplate.load(Jclass, id);
	}

	public T saveEntity(T entity) {
		hibernatetemplate.save(entity);
		return 	entity ;
	}

	public void updateEntity(T entity) {
		 
		hibernatetemplate.update(entity);
	}

}
