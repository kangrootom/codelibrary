package cn.itcast.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import cn.itcast.core.page.PageResult;
import cn.itcast.entity.Employee;

public class EmployeeDao {
	
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Employee findById(Serializable eid) {
		
		
				// TODO Auto-generated method stub
		Employee emp = (Employee) sessionFactory.getCurrentSession().get(Employee.class, eid);
		return emp;
		
	}
	
	@SuppressWarnings("unchecked")
	public List<Employee> findObjects(){
		return (List<Employee>)sessionFactory.getCurrentSession().createQuery("from Employee ").list();
	}
	
	

	
	public void save(Employee e){
		
		sessionFactory.getCurrentSession().save(e);
		
	}


	public PageResult finddPageResult(int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		Query query = sessionFactory.getCurrentSession().createQuery("from Employee");
		if(pageNo<1){pageNo=1;}
		query.setFirstResult((pageNo-1)*pageSize);
		query.setMaxResults(pageSize);
		int totalCount = findObjects().size();
		return new PageResult(pageNo,pageSize,totalCount,query.list());
	}

	public void delete(Integer id) {
		// TODO Auto-generated method stub
		Query query =  sessionFactory.getCurrentSession().createQuery("Delete from Employee where eid=?");
		query.setParameter(0, id);
		query.executeUpdate();
		
	}
}
