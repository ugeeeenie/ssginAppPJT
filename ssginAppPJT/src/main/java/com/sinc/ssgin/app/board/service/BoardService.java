package com.sinc.ssgin.app.board.service;

import java.util.List;

import com.sinc.ssgin.app.model.vo.PagingDTO;

public interface BoardService {
	////////////////////////////////////////공지사항
	public List<Object>	noticelistService(PagingDTO pagingDTO);
	public List<Object>	faqlistService(PagingDTO pagingDTO);
	public int getNoticeCount();
	public int getFaqCount();
	////////////////////////////////////////
}
