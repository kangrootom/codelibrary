package cn.itcast.entity;

public class User {
	private Integer id;//编号
	private String name;//姓名
	private Integer sal;//薪水
	private String sex;//性别
	private String content;
	public User(){}
	public User(Integer id, String name, Integer sal, String sex,String content) {
		this.id = id;
		this.name = name;
		this.sal = sal;
		this.sex = sex;
		this.content = content;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getSal() {
		return sal;
	}
	public void setSal(Integer sal) {
		this.sal = sal;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
