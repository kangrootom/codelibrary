package cn.itcast.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import cn.itcast.entity.User;
import cn.itcast.service.UserService;
import cn.itcast.utils.PageResult;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet(value="/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserService();
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String page = request.getParameter("page");
		if(page == null || page.trim().length() == 0){
			page = "1";
		}
		String rows = request.getParameter("rows");
		PageResult pageResult = userService.findUser(Integer.parseInt(page),Integer.parseInt(rows));
		
		Map<String,Object> map = new LinkedHashMap<>();
		map.put("total", pageResult.getTotalcount());
		map.put("rows", pageResult.getPageList());
		
		JSONArray jsonArray = JSONArray.fromObject(map);
		String jsonJava = jsonArray.toString();
		jsonJava = jsonJava.substring(1, jsonJava.length()-1);
		
		//以流的方式将JSON文本输出到DateGrid组件中
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.write(jsonJava);
		out.flush();
		out.close();
	}

}
