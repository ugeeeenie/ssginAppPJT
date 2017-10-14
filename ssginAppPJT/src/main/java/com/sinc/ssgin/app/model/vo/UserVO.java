package com.sinc.ssgin.app.model.vo;

public class UserVO {
	private int		user_no;
	private String	user_id;
	private int		user_block;
	private String 	user_tx;
	private String	user_flag;
	
	public UserVO() {
		super();
	}
	
	public UserVO(int user_no, String user_id, int user_block, String user_tx, String user_flag) {
		super();
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_block = user_block;
		this.user_tx = user_tx;
		this.user_flag = user_flag;
	}
	
	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getUser_block() {
		return user_block;
	}

	public void setUser_block(int user_block) {
		this.user_block = user_block;
	}

	public String getUser_tx() {
		return user_tx;
	}

	public void setUser_tx(String user_tx) {
		this.user_tx = user_tx;
	}
	
	public String getUser_flag() {
		return user_flag;
	}

	public void setUser_flag(String user_flag) {
		this.user_flag = user_flag;
	}

	@Override
	public String toString() {
		return "UserVO [user_no=" + user_no + ", user_id=" + user_id
				+ ", user_block=" + user_block + ", user_tx=" + user_tx
				+ ", user_flag=" + user_flag + "]";
	}
}
