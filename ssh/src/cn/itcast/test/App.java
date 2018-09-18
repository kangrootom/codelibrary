package cn.itcast.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.itcast.entity.Employee;
import cn.itcast.service.EmployeeService;

public class App {
		ApplicationContext ac = new ClassPathXmlApplicationContext("bean-*.xml");
		@Test
		public void testFind(){
			EmployeeService es = (EmployeeService) ac.getBean("employeeService");
			System.out.println(es.getClass());
			Employee e = es.findById(2);
			System.out.println(e);
		}
}
