package cn.itcast.service;

import java.util.List;

import cn.itcast.entity.Admin;

public interface AdminService {
	public  List<Admin> getAll();

	public Admin findAdminByName(String aname);
}
