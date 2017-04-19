package pojo;

import java.io.Serializable;

public class Aclass implements Serializable{
	private int cid;
	private String cname;
	private String teacher;
	private int student;
	private int proid;
	private int faid;
	
	public int getProid() {
		return proid;
	}
	public void setProid(int proid) {
		this.proid = proid;
	}
	public int getFaid() {
		return faid;
	}
	public void setFaid(int faid) {
		this.faid = faid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public int getStudent() {
		return student;
	}
	public void setStudent(int student) {
		this.student = student;
	}
	
	

}
