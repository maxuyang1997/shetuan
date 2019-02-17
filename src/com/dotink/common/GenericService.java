package com.dotink.common;

import java.io.Serializable;

public interface GenericService<T, PK extends Serializable> {
	
	public T loadEntityById(PK id);
	public T getEntityById(PK id);
	public T saveEntity(T entity);
	public void updateEntity(T entity);
	public void deleteEntity(T entity);
	
}
