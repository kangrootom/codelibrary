package cn.itcast.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.dao.AdminDao;
import cn.itcast.entity.Admin;

public class AdminDaoImpl implements AdminDao {
	
	private SessionFactory sessionFactory;
    
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

	@Override
	public List<Admin> getAll() {
		return (List<Admin>)sessionFactory.getCurrentSession().createQuery("from Admin ").list();
	}

	@Override
	public Admin findAdminByName(String aname) {
		// TODO Auto-generated method stub
		return (Admin) sessionFactory.getCurrentSession().
				createQuery("from Admin where aname = ?").setParameter(0, aname).getResultList().get(0);
	}

}
