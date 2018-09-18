package cn.itcast.service;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.itcast.dao.ComplainDao;

public class ComplainService {
	public List<Map> getAnnualStatisticDataByYear(int year) throws SQLException, UnsupportedEncodingException {
		ComplainDao complainDao = new ComplainDao();
		List<Map> resList = new ArrayList<Map>();
		//1、获取统计数据
		List<Object[]> list = complainDao.getAnnualStatisticDataByYear(year);
		if(list != null && list.size()>0){
			Calendar cal = Calendar.getInstance();
			//是否当前年份
			boolean isCurYear = (cal.get(Calendar.YEAR) == year);
			int curMonth = cal.get(Calendar.MONTH)+1;//当前月份
			//2、格式化统计结果
			int temMonth = 0;
			Map<String, Object> map = null;
			for(Object[] obj: list){
				temMonth = Integer.valueOf((obj[0])+"");
				map = new HashMap<String, Object>();
				map.put("label", new String((temMonth+ " 月").getBytes("utf-8"),"iso-8859-1"));
				if(isCurYear){//当前年份
					//当前年份：如果月份已过的则直接取投诉数并且值为空或null时则设为0；如果月份未过的则全部投诉数置空
					if(temMonth > curMonth){//未到月份，则投诉数为空
						map.put("value", "");
					} else {//已过月份
						map.put("value", obj[1]==null?"0":obj[1]);
					}
				} else {//非当前年份则直接取投诉数并且值为空或null时则设为0
					map.put("value", obj[1]==null?"0":obj[1]);
				}
				resList.add(map);
			}
		}
		
		return resList;
	}
}
