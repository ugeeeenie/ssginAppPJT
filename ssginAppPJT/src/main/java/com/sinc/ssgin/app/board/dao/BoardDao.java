package com.sinc.ssgin.app.board.dao;

import java.util.List;

import com.sinc.ssgin.app.model.vo.PagingDTO;

public interface BoardDao {
	/////////////////////////////////////////////////////공지사항
	public List<Object>		noticelistRow(PagingDTO pagingDTO);
	public List<Object>		faqlistRow(PagingDTO pagingDTO);
	public int				getNoticeCountRow();
	public int				getFaqCountRow();
	////////////////////////////////////////////////////
}
