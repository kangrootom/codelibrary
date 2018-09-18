package cn.itcast.action;

import java.text.DecimalFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.entity.Admin;
import cn.itcast.service.AdminService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends BaseAction {

    private AdminService adminService;
    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }
    public String list() throws Exception {
        List<Admin> adminList = adminService.getAll();
        ActionContext ac = ActionContext.getContext();
        ac.put("adminList", adminList);
        return "adminList";
    }
    
    //金额格式转换
    public String formatDouble(double s){
        DecimalFormat fmat=new DecimalFormat("\u00A4##.0"); 
        return fmat.format(s);
    }
}
