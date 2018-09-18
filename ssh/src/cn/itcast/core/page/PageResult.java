package cn.itcast.core.page;

import java.util.ArrayList;
import java.util.List;

public class PageResult {
	
	private int pageNo;
	private int totalPage;
	private int pageSize;
	private int totalCount;
	private List list;
	public static int DEFAULT_PAGESIZE = 2;
	
	public PageResult() {
	}


	public PageResult(int pageNo, int pageSize, int totalCount, List list) {
		
		this.list =list==null?new ArrayList<>():list;
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		if(totalCount != 0){
			int tem = totalCount/pageSize;
			this.totalPage = totalCount%pageSize==0?tem:tem+1;
			this.pageNo = pageNo;
		}else{
			this.pageNo=0;
		}
	}


	public int getPageNo() {
		return pageNo;
	}


	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}


	public int getTotalPage() {
		return totalPage;
	}


	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}


	public int getPageSize() {
		return pageSize;
	}


	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}


	public int getTotalCount() {
		return totalCount;
	}


	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}


	public List getList() {
		return list;
	}


	public void setList(List list) {
		this.list = list;
	}


	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	
	
}
