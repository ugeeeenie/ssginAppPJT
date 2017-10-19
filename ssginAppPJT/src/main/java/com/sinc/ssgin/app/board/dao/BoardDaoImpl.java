package com.sinc.ssgin.app.board.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sinc.ssgin.app.model.vo.PagingDTO;

@Repository("boardDao")
public class BoardDaoImpl implements BoardDao{
	
	public static final String BOARDPREFIX="com.sinc.ssgin.board.mapper.";
	
	@Resource(name="sqlSession")
	private SqlSession session;
	
	@Override
	public List<Object> noticelistRow(PagingDTO pagingDTO) {
		System.out.println("NoticeDaoImpl ListRow");
		System.out.println(pagingDTO.toString());
		List<Object> list = (List<Object>)session.selectList(BOARDPREFIX + "noticelist", pagingDTO);
		System.out.println(list);
		return list;
		
	}

	@Override
	public List<Object> faqlistRow(PagingDTO pagingDTO) {
		System.out.println("FaqDaoImpl ListRow");
		List<Object> list = (List<Object>)session.selectList(BOARDPREFIX + "faqlist", pagingDTO);
		return list;
	}
	

	@Override
	public int getNoticeCountRow() {
		return session.selectOne(BOARDPREFIX+"noticeCnt");
	}

	@Override
	public int getFaqCountRow() {
		return session.selectOne(BOARDPREFIX+"faqCnt");
	}

}
