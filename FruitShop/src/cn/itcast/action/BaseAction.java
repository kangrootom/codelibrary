package cn.itcast.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {
	
	private Class clazz;
	@Override
	public T getModel() {
		// TODO Auto-generated method stub
		return (T) clazz;
	}
	
	
}
