package com.sinc.ssgin.app.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sinc.ssgin.app.board.dao.BoardDao;
import com.sinc.ssgin.app.model.vo.PagingDTO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{

	@Resource(name="boardDao")
	private BoardDao dao;
	
	@Override
	public List<Object> noticelistService(PagingDTO pagingDTO) {
		System.out.println("NoticeServiceImpl listService");
		
		return dao.noticelistRow(pagingDTO);
	}
	
	@Override
	public int getNoticeCount() {
		return dao.getNoticeCountRow();
	}
	
	@Override
	public int getFaqCount() {
		return dao.getFaqCountRow();
	}

	@Override
	public List<Object> faqlistService(PagingDTO pagingDTO) {
		System.out.println("FaqServiceImpl listService");		
		return dao.faqlistRow(pagingDTO);
	}

}
