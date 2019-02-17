package com.dotink.bean;

import java.util.List;

public class PageModel {
	private int currentPage;// 当前页

	private int totalSize;// 总条数

	private int totalPage;// 总页数

	private int pageSize;// 每页显示个数

	private boolean isFirstPage = false;// 是否是第一页

	private boolean isLastPage = false;// 是否是最后一页

	private List<?> list;// list 集合

	private Object object;// 备用参数
    
	public void changeValue(){//设置总页数，是否是最后一页 和是否是第一页
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
