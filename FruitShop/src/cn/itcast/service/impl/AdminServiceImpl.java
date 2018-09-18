package cn.itcast.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.dao.AdminDao;
import cn.itcast.entity.Admin;
import cn.itcast.service.AdminService;

public class AdminServiceImpl implements AdminService {
	
	 private AdminDao adminDao;
	 
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public List<Admin> getAll() {
		
        List<Admin> adminList = adminDao.getAll();
        
        return adminList;
	}

	@Override
	public Admin findAdminByName(String aname) {
		// TODO Auto-generated method stub
		Admin admin = null;
		admin = adminDao.findAdminByName(aname);
		return admin;
	}

}
