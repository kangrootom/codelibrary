package cn.itcast.entity;

import java.util.Date;

public class Employee {
	
	private Integer eid;
	private String ename;
	private Double esalary;
	private Date ehiredate;
	private Dept dept;
	
	public Integer getEid() {
		return eid;
	}
	public void setEid(Integer eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public Double getEsalary() {
		return esalary;
	}
	public void setEsalary(Double esalary) {
		this.esalary = esalary;
	}
	public Date getEhiredate() {
		return ehiredate;
	}
	public void setEhiredate(Date ehiredate) {
		this.ehiredate = ehiredate;
	}
	public Dept getDept() {
		return dept;
	}
	public void setDept(Dept dept) {
		this.dept = dept;
	}
	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", ename=" + ename + ", esalary=" + esalary + ", ehiredate=" + ehiredate
				+ ", dept=" + dept + "]";
	}
	
	
}
