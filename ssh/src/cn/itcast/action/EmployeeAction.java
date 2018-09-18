package cn.itcast.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.itcast.core.page.PageResult;
import cn.itcast.service.EmployeeService;

public class EmployeeAction extends ActionSupport{
	
	private EmployeeService employeeService;
	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}
	private int page_no;
	private Integer[] ids;
	public String list() {
		// TODO Auto-generated method stub
		//System.out.println(page_no);
		PageResult page = employeeService.findPageResult(page_no,PageResult.DEFAULT_PAGESIZE);
		Map<String,Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
		request.put("page", page);
		return SUCCESS;
	}

	public String delete(){
		System.out.println(ids);
		employeeService.deleteObjects(ids);
		return "list";
	}
	public EmployeeService getEmployeeService() {
		return employeeService;
	}


	public int getPage_no() {
		return page_no;
	}


	public void setPage_no(int page_no) {
		this.page_no = page_no;
	}

	public Integer[] getIds() {
		return ids;
	}

	public void setIds(Integer[] ids) {
		this.ids = ids;
	}
	
}
