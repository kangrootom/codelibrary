package cn.itcast.dao;

import java.util.List;

import cn.itcast.entity.Admin;

public interface AdminDao {
	public List<Admin> getAll();

	public Admin findAdminByName(String aname);
}
