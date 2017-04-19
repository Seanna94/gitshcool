package pojo;

import java.io.Serializable;

public class Profession implements Serializable{
	private int pid;
	private String pname;
	private String leader;
	private String aclass;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getLeader() {
		return leader;
	}
	public void setLeader(String leader) {
		this.leader = leader;
	}
	public String getAclass() {
		return aclass;
	}
	public void setAclass(String aclass) {
		this.aclass = aclass;
	}
	
}
