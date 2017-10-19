package com.sinc.ssgin.app.board.ctrl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sinc.ssgin.app.board.service.BoardService;
import com.sinc.ssgin.app.model.vo.PagingDTO;

@Controller
@RequestMapping("/board")
public class BoardCtrl {

	@Resource(name="boardService")
	private BoardService service;
	
	@RequestMapping("/notice.app")
	public String noticelist(Model model, PagingDTO pagingDTO, String pageNo){
		System.out.println("NoticeCtrl list");
		
		pagingDTO.setPageSize(10); // 한 페이지에 보일 게시글 수
		pagingDTO.setPageNo(1); // 현재 페이지 번호
		if(pageNo != null){
			pagingDTO.setPageNo(Integer.parseInt(pageNo));
		}
		pagingDTO.setBlockSize(5);
		pagingDTO.setTotalCount(service.getNoticeCount()); // 게시물 총 개수
		
		
		List<Object> noticeList = service.noticelistService(pagingDTO) ; 
		//List<Object> faqList = service.faqlistService(pagingDTO) ; 
		
		//System.out.println(pagingDTO.toString());
	
		model.addAttribute("paging", pagingDTO);
		model.addAttribute("notice", noticeList); 
		//model.addAttribute("faq", faqList); 
		
		return "board/notice" ;  
	}
	
	@RequestMapping("/faq.app")
	public String faqlist(Model model, PagingDTO pagingDTO, String pageNo){
		System.out.println("FaqCtrl list");
		
		pagingDTO.setPageSize(10); // 한 페이지에 보일 게시글 수
		pagingDTO.setPageNo(1); // 현재 페이지 번호
		if(pageNo != null){
			pagingDTO.setPageNo(Integer.parseInt(pageNo));
		}
		pagingDTO.setBlockSize(5);
		pagingDTO.setTotalCount(service.getFaqCount()); // 게시물 총 개수
		
		//List<Object> noticeList = service.noticelistService(pagingDTO) ; 
		List<Object> faqList = service.faqlistService(pagingDTO) ; 
		
		
		model.addAttribute("paging", pagingDTO);
		//model.addAttribute("notice", noticeList); 
		model.addAttribute("faq", faqList); 
		
		return "board/faq" ;  
	}
	
	// 이벤트 보기
	@RequestMapping("/event.app")
	public String event(){
		System.out.println("event ok");
		
		return "board/event";
	}
	
	// 사용처 안내
	@RequestMapping("/useStore.app")
	public String useStore(){
		System.out.println("useStore ok");
		
		return "board/useStore";
	}
}
