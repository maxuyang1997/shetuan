package com.dotink.bean;

import java.util.List;

public class PageModel {
	private int currentPage;// ��ǰҳ

	private int totalSize;// ������

	private int totalPage;// ��ҳ��

	private int pageSize;// ÿҳ��ʾ����

	private boolean isFirstPage = false;// �Ƿ��ǵ�һҳ

	private boolean isLastPage = false;// �Ƿ������һҳ

	private List<?> list;// list ����

	private Object object;// ���ò���
    
	public void changeValue(){//������ҳ�����Ƿ������һҳ ���Ƿ��ǵ�һҳ
		if(totalSize%pageSize==0){
			totalPage=totalSize/pageSize;
		}else{
			totalPage=totalSize/pageSize+1;
		}
		if(currentPage<=1){
			currentPage=1;
			isFirstPage=true;
		}
		if(currentPage>=totalPage){
			currentPage=totalPage;
			isLastPage=true;
		}
		
	}
	
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public boolean getIsFirstPage() {
		return isFirstPage;
	}

	public void setIsFirstPage(boolean isFirstPage) {
		this.isFirstPage = isFirstPage;
	}

	public boolean getIsLastPage() {
		return isLastPage;
	}

	public void setIsLastPage(boolean isLastPage) {
		this.isLastPage = isLastPage;
	}

	public List<?> getList() {
		return list;
	}

	public void setList(List<?> list) {
		this.list = list;
	}

	public Object getObject() {
		return object;
	}

	public void setObject(Object object) {
		this.object = object;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalSize() {
		return totalSize;
	}

	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}

}
