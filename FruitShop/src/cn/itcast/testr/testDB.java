package cn.itcast.testr;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.itcast.entity.Admin;

public class testDB {
	
	private SessionFactory sf;
	
	@Before
	public void testGetSessionFactory(){
		ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		System.out.println(ac);
		sf = (SessionFactory) ac.getBean("sessionFactory");
		
	}
	@Test
	public void testGetAdmin(){
		Session session = sf.openSession();
		List list = session.createQuery("from Admin").list();
		System.out.println(list.size());
		session.close();
	}
	@Test
	public void testAddAdmin(){
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		Admin admin = new Admin();
		admin.setAname("lucy");
		admin.setApwd("123456");
		session.save(admin);
		tx.commit();
		session.close();
	}
}
