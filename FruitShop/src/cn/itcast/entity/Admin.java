package cn.itcast.entity;

public class Admin {
	private Integer aid;
	private String aname;
	private String apwd;
	
	public Admin() {
	}

	public Admin(Integer aid, String aname, String apwd) {
		this.aid = aid;
		this.aname = aname;
		this.apwd = apwd;
	}

	public Integer getAid() {
		return aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getApwd() {
		return apwd;
	}

	public void setApwd(String apwd) {
		this.apwd = apwd;
	}

	
	
	
}