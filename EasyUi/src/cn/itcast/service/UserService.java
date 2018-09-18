package cn.itcast.service;

import java.util.List;

import cn.itcast.dao.UserDao;
import cn.itcast.entity.User;
import cn.itcast.utils.PageResult;

public class UserService {
	private UserDao userDao= new UserDao();
	public PageResult findUser(int page,int rows){
		PageResult pageResult = new PageResult();
		pageResult.setPageSize(rows);
		pageResult.setPageNo(page);
		int totalCount = userDao.getToalCount();
		pageResult.setTotalcount(totalCount);
		int totalPage = 0;
		if(pageResult.getTotalcount() % pageResult.getPageSize() == 0){
			totalPage = pageResult.getTotalcount() / pageResult.getPageSize();
		}else{
			totalPage = pageResult.getTotalcount() / pageResult.getPageSize()+1;
		}
		pageResult.setTotalpage(totalPage);
		List<User> pageList = userDao.findUser(page, rows);
		pageResult.setPageList(pageList);
		return pageResult;
	}
}
