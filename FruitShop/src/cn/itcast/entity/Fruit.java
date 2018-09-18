package cn.itcast.entity;

public class Fruit {
	private Integer fid;
	private String fname;
	private Float fprice;
	private String faddress;
	private String fimgsrc;
	public Fruit() {
	}
	public Fruit(Integer fid, String fname, Float fprice, String faddress,
			String fimgsrc) {
		this.fid = fid;
		this.fname = fname;
		this.fprice = fprice;
		this.faddress = faddress;
		this.fimgsrc = fimgsrc;
	}
	public Integer getFid() {
		return fid;
	}
	public void setFid(Integer fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public Float getFprice() {
		return fprice;
	}
	public void setFprice(Float fprice) {
		this.fprice = fprice;
	}
	public String getFaddress() {
		return faddress;
	}
	public void setFaddress(String faddress) {
		this.faddress = faddress;
	}
	public String getFimgsrc() {
		return fimgsrc;
	}
	public void setFimgsrc(String fimgsrc) {
		this.fimgsrc = fimgsrc;
	}
	
	
}
