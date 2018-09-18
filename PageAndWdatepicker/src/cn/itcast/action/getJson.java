package cn.itcast.action;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.entity.Employee;

@Controller
public class getJson {

	@RequestMapping("/getJson")
	@ResponseBody
	public Model getJson(String name,Model model){
		System.out.println(name);
		Employee e = new Employee(1,"jack","male",new Date());
		model.addAttribute("emp", e);
		model.addAttribute("status", "you have succeed");
		return model;
	}
 }
