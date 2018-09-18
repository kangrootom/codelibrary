package cn.itcast.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;

import net.sf.json.JSONArray;
import cn.itcast.service.ComplainService;

/**
 * Servlet implementation class ComplainServlet
 */
@WebServlet("/ComplainServlet")
public class ComplainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ComplainService complainService = new ComplainService();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
			
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			try {
				int year = 0;
				if(request.getParameter("year") != null){
					year = Integer.valueOf(request.getParameter("year"));
				} else {
					//默认 当前年份
					year = Calendar.getInstance().get(Calendar.YEAR);
				}
				System.out.println(year);
				//2、获取统计年度的每个月的投诉数
				Map<String,Object> statisticMap = new HashMap<String, Object>();
				statisticMap.put("msg", "success");
				statisticMap.put("chartData", complainService.getAnnualStatisticDataByYear(year));
				
				JSONArray jsonArray = JSONArray.fromObject(statisticMap);
				String jsonJava = jsonArray.toString();
				System.out.println(jsonJava);
				jsonJava = jsonJava.substring(1,jsonJava.length()-1);
				System.out.println(jsonJava);
				PrintWriter out = response.getWriter();
				out.write(jsonJava);
				out.flush();
				out.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}
	public static void main(String[] args) {
		List dataList = new ArrayList();
		dataList.add(1);
		dataList.add(2);
		dataList.add(3);
		dataList.add(4);
		dataList.add(5);
		for(int i=0;i<dataList.size();i++){
			System.out.println("list"+"("+i+"):"+dataList.get(i));
		}
	}

}
