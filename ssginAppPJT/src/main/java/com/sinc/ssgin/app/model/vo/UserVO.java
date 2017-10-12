package com.sinc.ssgin.app.model.vo;

public class UserVO {
	private int		user_no;
	private String	user_hash;
	private String sessionKey, sessionLimit;
	private boolean useCookie;
	
	public UserVO() {
		super();
	}
	
	public UserVO(int user_no, String user_hash, String sessionKey, String sessionLimit, boolean useCookie) {
		super();
		this.user_no = user_no;
		this.user_hash = user_hash;
		this.sessionKey = sessionKey;
		this.sessionLimit = sessionLimit;
		this.useCookie = useCookie;
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
	
	public String getSessionKey() {
		return sessionKey;
	}

	public void setSessionKey(String sessionKey) {
		this.sessionKey = sessionKey;
	}

	public String getSessionLimit() {
		return sessionLimit;
	}

	public void setSessionLimit(String sessionLimit) {
		this.sessionLimit = sessionLimit;
	}
	
	public boolean isUseCookie() {
		return useCookie;
	}

	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}

	@Override
	public String toString() {
		return "UserVO [user_no=" + user_no + ", user_hash=" + user_hash
				+ ", sessionKey=" + sessionKey + ", sessionLimit="
				+ sessionLimit + ", useCookie=" + useCookie + "]";
	}
}
