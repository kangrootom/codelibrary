package cn.itcast.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.entity.User;
import cn.itcast.utils.JdbcUtils;

public class UserDao {
	public List<User> findUser(int page,int rows){
		String sql = "select * from user limit ?,?";
		int startIndex = (page-1)*rows;
		List<User> userList = null;
		try {
			userList = JdbcUtils.getQueryRuner().query(sql, new BeanListHandler<User>(User.class), startIndex,rows);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userList;
	}
	public int getToalCount(){
		String sql = "select count(*) from user";
		int totalCount = 0;
		try {
			Long tem = (Long) JdbcUtils.getQueryRuner().query(sql,new ScalarHandler<Long>());
			totalCount = tem.intValue();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return totalCount;
	}
	public static void main(String[] args) {
		UserDao userDao = new UserDao();
		int totalCount = userDao.getToalCount();
		System.out.println(totalCount);
	}
}
