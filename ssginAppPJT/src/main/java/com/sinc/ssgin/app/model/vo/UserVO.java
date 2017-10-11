package com.sinc.ssgin.app.model.vo;

public class UserVO {
	private int		user_no;
	private String	user_hash;
	
	public UserVO() {
		super();
	}

	public UserVO(int user_no, String user_hash) {
		super();
		this.user_no = user_no;
		this.user_hash = user_hash;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_hash() {
		return user_hash;
	}

	public void setUser_hash(String user_hash) {
		this.user_hash = user_hash;
	}

	@Override
	public String toString() {
		return "UserVO [user_no=" + user_no + ", user_hash=" + user_hash + "]";
	}
}
