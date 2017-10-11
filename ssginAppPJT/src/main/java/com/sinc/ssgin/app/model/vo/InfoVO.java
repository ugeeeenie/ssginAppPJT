package com.sinc.ssgin.app.model.vo;

public class InfoVO {
	private String 	user_name;
	private int 	user_birth;
	private int		user_sex;
	private String	user_phone;
	private String	user_pwd;
	private String	hash_id;
	private String	hash_pwd;
	
	public InfoVO(String user_name, int user_birth, int user_sex,
			String user_phone, String user_pwd,
			String hash_id, String hash_pwd) {
		super();
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_sex = user_sex;
		this.user_phone = user_phone;
		this.user_pwd = user_pwd;
		this.hash_id = hash_id;
		this.hash_pwd = hash_pwd;
	}
	public InfoVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(int user_birth) {
		this.user_birth = user_birth;
	}
	public int getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(int user_sex) {
		this.user_sex = user_sex;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getHash_id() {
		return hash_id;
	}
	public void setHash_id(String hash_id) {
		this.hash_id = hash_id;
	}
	public String getHash_pwd() {
		return hash_pwd;
	}
	public void setHash_pwd(String hash_pwd) {
		this.hash_pwd = hash_pwd;
	}
	
	@Override
	public String toString() {
		return "InfoVO [user_name=" + user_name
				+ ", user_birth=" + user_birth
				+ ", user_sex=" + user_sex
				+ ", user_phone=" + user_phone
				+ ", user_pwd=" + user_pwd
				+ ", hash_id=" + hash_id
				+ ", hash_pwd=" + hash_pwd
				+ "]";
	}
}
