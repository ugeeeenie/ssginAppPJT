package com.sinc.ssgin.app.board.vo;

public class FaqVO {
	private int faq_seq;
	private	String faq_title, faq_content, faq_category;
	public FaqVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public FaqVO(int faq_seq, String faq_title, String faq_content, String faq_category) {
		super();
		this.faq_seq = faq_seq;
		this.faq_title = faq_title;
		this.faq_content = faq_content;
		this.faq_category = faq_category;
	}

	public int getFaq_seq() {
		return faq_seq;
	}
	public void setFaq_seq(int faq_seq) {
		this.faq_seq = faq_seq;
	}
	public String getFaq_title() {
		return faq_title;
	}
	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}
	public String getFaq_content() {
		return faq_content;
	}
	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}
	public String getFaq_category() {
		return faq_category;
	}
	public void setFaq_category(String faq_category) {
		this.faq_category = faq_category;
	}
	@Override
	public String toString() {
		return "FaqVO [faq_seq=" + faq_seq + ", faq_title=" + faq_title + ", faq_content=" + faq_content
				+ ", faq_category=" + faq_category + "]";
	}
	
	
}
