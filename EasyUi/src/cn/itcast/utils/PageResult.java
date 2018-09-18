package cn.itcast.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * 封装分页的参数
 * 
 * @author Jie.Yuan
 * 
 */
public class PageResult {
	private int pageNo;
	private int pageSize;
	private int totalpage;
	private int totalcount;
	private List pageList = new ArrayList<>();
	public PageResult() {
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public List getPageList() {
		return pageList;
	}
	public void setPageList(List pageList) {
		this.pageList = pageList;
	}
	
	
	

}
