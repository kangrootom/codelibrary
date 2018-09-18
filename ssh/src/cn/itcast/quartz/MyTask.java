package cn.itcast.quartz;

import java.sql.Timestamp;
import java.util.Date;

public class MyTask {

	
	public void doMyTask(){
		System.out.println("myTask"+new Timestamp(new Date().getTime()));
	}

}
