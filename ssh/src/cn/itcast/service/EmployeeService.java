package cn.itcast.service;

import java.io.Serializable;
import java.util.List;

import cn.itcast.core.page.PageResult;
import cn.itcast.dao.EmployeeDao;
import cn.itcast.entity.Employee;

public class EmployeeService {
	
	private EmployeeDao employeeDao;
	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}
	
	public Employee findById(Serializable eid) {
		// TODO Auto-generated method stub
		Employee e = employeeDao.findById(eid);
		return e;
	}
	
	public List<Employee> findObjects(){
		return employeeDao.findObjects();
	}
	
	public void save(Employee e){
		employeeDao.save(e);
	}

	public PageResult findPageResult(int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		return employeeDao.finddPageResult(pageNo,pageSize);
	}
	
	public void delete(Integer id){
		employeeDao.delete(id);
	}

	public void deleteObjects(Integer[] ids) {
		// TODO Auto-generated method stub
		if(ids!=null && ids.length>0){
			for(int i=0;i<ids.length;i++){
				delete(ids[i]);
			}
		}
		
	}
}
