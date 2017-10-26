package com.sinc.ssgin.app.user.ctrl;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sinc.ssgin.app.model.vo.InfoVO;
import com.sinc.ssgin.app.model.vo.LogVO;
import com.sinc.ssgin.app.model.vo.PagingDTO;
import com.sinc.ssgin.app.model.vo.UserVO;
import com.sinc.ssgin.app.user.service.UserService;

@Controller
@RequestMapping("/ssgin")
public class UserCtrl {
	
	@Resource(name="userService")
	private UserService service;
	
	//로그인폼페이지
	@RequestMapping("/loginForm.app")
	public String loginForm(UserVO user, String url, HttpSession session){
		System.out.println("loginform ctrl ok");
		
		// 필요한 session들 Setting
		if(url == null){
			url = "ssgin";
		}
		session.setAttribute("url", url);
		
		if(session.getAttribute("ip") == null){
			try {
				InetAddress local = InetAddress.getLocalHost();
				session.setAttribute("ip", local.getHostAddress());
			} catch (UnknownHostException e) {
				e.printStackTrace();
			}
		}
		
		//if(session.getAttribute("loginUser") == null){
			session.setAttribute("loginUser", new UserVO(64, 
					"0x987c07ecba6bb89675c78259a1c40abd042b7cf987af73ac73960106951e2e1c", 175869, 
					"0xb9605ed34c20712529ca535806d0d9fa9058ac2d960a7e7a09f93ad78ea8fea2", "Y"));
		//}
		
		System.out.println(((UserVO)session.getAttribute("loginUser")).toString());
		
		return "ssgin/loginForm";
	}
	
	//회원가입폼페이지
	@RequestMapping("/joinForm.app")
	public String joinForm(InfoVO userInfo){
		System.out.println("joinform ok");
		
		return "ssgin/joinForm";	
	}
	
	//비밀번호설정페이지
	@RequestMapping("/setPwd.app")
	public String setPwdForm(InfoVO userInfo, HttpSession session){
		System.out.println("setpwdform ok");
		
		session.setAttribute("userInfo", userInfo);
		System.out.println("userInfo : " + userInfo.toString());
		
		return "ssgin/setPwd";	
	}
	
	//가입트랜잭션전송
	@RequestMapping("/join.app")
	public String join(InfoVO userInfo, HttpSession session){
		System.out.println("join ok");
		
		InfoVO result = (InfoVO)session.getAttribute("userInfo");
		result.setUser_pwd(userInfo.getUser_pwd());
		
		session.setAttribute("userInfo", result);
		System.out.println("result : " + result.toString());
		
		return "ssgin/joinIng";	
	}
	
	//가입정보 DB에 전송
	@RequestMapping("/joinDB.app")
	@ResponseBody
	public void joinDB(UserVO user, HttpSession session){
		System.out.println("joinDB ok");
		
		System.out.println("user : " + user.toString());
		service.joinService(user);
		
		// userInfo 임시 저장 session 삭제
		session.removeAttribute("userInfo");
		
		session.setAttribute("loginUser", service.loginUserService(user));
		System.out.println("loginUser : " + ((UserVO)session.getAttribute("loginUser")).toString());
	}
	
	//loginUser존재할 때 session에 심기
	@RequestMapping("/loginUserCheck.app")
	@ResponseBody
	public void loginUser(UserVO user, HttpSession session){
		System.out.println("loginUserCheck ok");
		
		System.out.println("user : " + user.toString());
		
		session.setAttribute("loginUser", service.loginUserService(user));
		System.out.println("loginUser : " + ((UserVO)session.getAttribute("loginUser")).toString());
	}
	
	/*//약관동의페이지
	@RequestMapping("/userAgree.app")
	public String userAgreeForm(InfoVO userInfo){
		System.out.println("useragreeform ok");
		return "ssgin/userAgreeForm";	
	}*/

	//로그내역 테이블에 insert
	@RequestMapping("/insertLog.app")
	@ResponseBody
	public void insertLog(LogVO log, HttpSession session){
		System.out.println("insertLog ok");
		
		// LOG 테이블에 저장
		log.setUser_no(((UserVO)session.getAttribute("loginUser")).getUser_no());
		service.insertLogService(log);
	}
	
	//메인페이지
	@RequestMapping("/main.app")
	public String mainForm(String phoneNum, HttpSession session){
		System.out.println("mainForm ok");
		
		/* 임시 */
		phoneNum = "01044883094";
		session.setAttribute("phone", phoneNum);
		/*session.setAttribute("loginUser", new UserVO(10, "0x3fa26ff38e8d4a8333e824e2dedcbfc5db475742d68cd1adf76aa98f5f23566f", 1781008,
														"0xd0c4ddab3a4bb4ba591b7c6506811dd8061d029ef50d0fc8d648b3e9e5875df1", "Y"));
		*/
		System.out.println("loginUser : " + ((UserVO)session.getAttribute("loginUser")).toString());
		
		return "ssgin/mainForm";	
	}
	
	//마이페이지
	@RequestMapping("/settings.app")
	public String settings(InfoVO userInfo){
		System.out.println("settings ok");
		return "ssgin/settings";	
	}
	
	//마이페이지>비밀번호변경페이지
	@RequestMapping("/updatePwd.app")
	public String updatePwd(){
		System.out.println("updatepwd ok");
		return "ssgin/updatePwd";
	}
	
	//마이페이지>약관 및 정책 확인페이지
	@RequestMapping("/policy.app")
	public String policy(){
		System.out.println("policy ok");
		return "ssgin/policy";
	}
		
	//마이페이지>계정해지페이지
	@RequestMapping("/userDelete.app")
	public String userDelete(){
		System.out.println("userdelete ok");
		return "ssgin/userDelForm";
	}
	
	//탈퇴트랜잭션전송
	@RequestMapping("/leave.app")
	public String leave(String state, Model model){
		System.out.println("leave ok");
		
		System.out.println("state : " + state);
		model.addAttribute("state", state);
		
		return "ssgin/leaveIng";	
	}
	
	//state="reset" : 비밀번호 재설정을 위한 탈퇴, state="delete" : 마이페이지>계정해지
	@RequestMapping("/leaveUser.app")
	@ResponseBody
	public void leaveUser(String state, HttpSession session){
		System.out.println("leaveUser ok");
		
		if(state.equals("reset")){
			// USER TABLE UPDATE
			service.updateUserFlagService((UserVO)session.getAttribute("loginUser"));
		}
		
		else if(state.equals("delete")){
			// LOG TABLE에서 삭제(계정해지 경우에만) => 비밀번호 재설정일 때는 LOG 내역은 남김
			service.deleteLogService((UserVO)session.getAttribute("loginUser"));
						
			// USER TABLE에서 삭제
			service.deleteUserService((UserVO)session.getAttribute("loginUser"));
		}
		
		// session 삭제
		session.removeAttribute("loginUser");
	}
	
	//인증내역보기
	@RequestMapping("/authHistory.app")
	public String authHistory(){
		System.out.println("authHistory ok");
		
		return "ssgin/authHistory";
	}
	
	@RequestMapping("/loadMore.app")
	@ResponseBody
	public Map<String, Object> loadMore(PagingDTO paging, String pageNo, HttpSession session){
		System.out.println("loadMore ok");
		
		UserVO loginUser = (UserVO)session.getAttribute("loginUser");
		
		paging.setPageSize(10); // 한 페이지에 보일 게시글 수
		paging.setPageNo(1); // 현재 페이지 번호
		if(pageNo != null){
			paging.setPageNo(Integer.parseInt(pageNo));
		}
		paging.setBlockSize(10);
		paging.setTotalCount(service.getHistoryCount(loginUser)); // 게시물 총 개수
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("paging", paging);
		map.put("loginUser", loginUser);
		
		List<Object> list = service.historyListService(map); 
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("paging", paging);
		pageMap.put("list", list);
		System.out.println(list);
		
		return pageMap;
	}
	
	//통계보기
	@RequestMapping("/ssginInfo.app")
	public String ssginInfo(){
		System.out.println("ssginInfo ok");
		
		return "ssgin/ssginInfo";
	}
	
	//블록정보보기
	@RequestMapping("/myBlockInfo.app")
	public String myBlockInfo(){
		System.out.println("myBlockInfo ok");
		
		
		return "ssgin/myBlockInfo";
	}
}
