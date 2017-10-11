package com.sinc.ssgin.app.model.vo;

public class LogVO {
	private int 	user_no;
	private String 	auth_time;
	private String	auth_success;
	private String	auth_url;
	
	public LogVO() {
		super();
	}

	public LogVO(int user_no, String auth_time, String auth_success,
			String auth_url) {
		super();
		this.user_no = user_no;
		this.auth_time = auth_time;
		this.auth_success = auth_success;
		this.auth_url = auth_url;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getAuth_time() {
		return auth_time;
	}

	public void setAuth_time(String auth_time) {
		this.auth_time = auth_time;
	}

	public String getAuth_success() {
		return auth_success;
	}

	public void setAuth_success(String auth_success) {
		this.auth_success = auth_success;
	}

	public String getAuth_url() {
		return auth_url;
	}

	public void setAuth_url(String auth_url) {
		this.auth_url = auth_url;
	}

	@Override
	public String toString() {
		return "LogVO [user_no=" + user_no + ", auth_time=" + auth_time
				+ ", auth_success=" + auth_success + ", auth_url=" + auth_url
				+ "]";
	}	
}
