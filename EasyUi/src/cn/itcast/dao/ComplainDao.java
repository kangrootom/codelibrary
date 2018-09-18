package cn.itcast.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.ArrayListHandler;

import cn.itcast.utils.JdbcUtils;

public class ComplainDao {
	public List<Object[]> getAnnualStatisticDataByYear(int year) throws SQLException {
		StringBuffer sb = new StringBuffer();
		sb.append("SELECT imonth, COUNT(comp_id)")
		.append(" FROM tmonth LEFT JOIN complain ON imonth=MONTH(comp_time)")
		.append(" AND YEAR(comp_time)=?")
		.append(" GROUP BY imonth ")
		.append(" ORDER BY imonth");
		List<Object[]> objList = null;
		objList = JdbcUtils.getQueryRuner().query(sb.toString(), new ArrayListHandler(),year);
		return objList;
	}

}
