package com.sinc.ssgin.app.board.vo;

public class NoticeVO {
	private 	int notice_seq;
	private	String notice_title, notice_content, notice_regdate;

	public NoticeVO() {
		super();
	}
	public NoticeVO(int notice_seq, String notice_title, String notice_content, String notice_regdate) {
		super();
		this.notice_seq = notice_seq;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_regdate = notice_regdate;
	}
	public int getNotice_seq() {
		return notice_seq;
	}
	public void setNotice_seq(int notice_seq) {
		this.notice_seq = notice_seq;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getNotice_regdate() {
		return notice_regdate;
	}
	public void setNotice_regdate(String notice_regdate) {
		this.notice_regdate = notice_regdate;
	}
	@Override
	public String toString() {
		return "NoticeVO [notice_seq=" + notice_seq + ", notice_title=" + notice_title + ", notice_content="
				+ notice_content + ", notice_regdate=" + notice_regdate + "]";
	}
	
	
	
	
}
