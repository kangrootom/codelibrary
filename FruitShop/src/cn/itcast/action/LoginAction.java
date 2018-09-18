package cn.itcast.action;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.entity.Admin;
import cn.itcast.service.AdminService;

public class LoginAction extends BaseAction {
	
	private Admin admin;
	
	
	private AdminService adminService;
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public String login() throws Exception {
		// TODO Auto-generated method stub
		if(admin!=null){
			String aname = admin.getAname();
			Admin admin_find = adminService.findAdminByName(aname);
			if(admin_find!=null){
				if(admin_find.getApwd().equals(admin.getApwd())){
					return "adminList";
				}
			}
		}
		return "login";
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	
}
