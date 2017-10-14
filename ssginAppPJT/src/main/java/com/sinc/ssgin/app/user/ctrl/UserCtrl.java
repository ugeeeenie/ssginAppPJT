package com.sinc.ssgin.app.user.ctrl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sinc.ssgin.app.model.vo.InfoVO;
import com.sinc.ssgin.app.model.vo.LogVO;
import com.sinc.ssgin.app.model.vo.UserVO;
import com.sinc.ssgin.app.user.service.UserService;

@Controller
@RequestMapping("/ssgin")
public class UserCtrl {
	
	@Resource(name="userService")
	private UserService service;
	
	//로그인폼페이지
	@RequestMapping("/loginForm.app")
	public String loginForm(UserVO user, HttpSession session){
		System.out.println("loginform ctrl ok");
		
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
	
	//약관동의페이지
	@RequestMapping("/userAgree.app")
	public String userAgreeForm(InfoVO userInfo){
		System.out.println("useragreeform ok");
		return "ssgin/userAgreeForm";	
	}

	//로그내역 테이블에 insert 및 최근 90일 이내 인증내역 아닌 LOG 삭제
	@RequestMapping("/insertLog.app")
	@ResponseBody
	public void mainForm(LogVO log, HttpSession session){
		System.out.println("insertLog ok");
		
		// LOG 테이블에 저장
		log.setUser_no(((UserVO)session.getAttribute("loginUser")).getUser_no());
		service.insertLogService(log);
		
		/*// 90일 이내가 아닌 인증내역 LOG 테이블에서 삭제
		service.expiredHistoryService();*/
	}
	
	//메인페이지
	@RequestMapping("/main.app")
	public String mainForm(){
		System.out.println("mainForm ok");
		return "ssgin/mainForm";	
	}
	
	//마이페이지
	@RequestMapping("/mypaging.app")
	public String myPage(InfoVO userInfo){
		System.out.println("mypage ok");
		return "ssgin/myPaging";	
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
	
	//state="reset" : 비밀번호 재설정을 위한 탈퇴, state="delete" : 마이페이지>계정해지
	@RequestMapping("/leaveUser.app")
	@ResponseBody
	public void leaveUser(UserVO user, String state){
		System.out.println("leaveUser ok");
		
		// USER TABLE에서 삭제
		service.deleteUserService(user);
		
		// LOG TABLE에서 삭제(계정해지 경우에만) => 비밀번호 재설정일 때는 LOG 내역은 남김(UPDATE 필요)
		if(state == "reset"){
			service.deleteLogService(user);
			//service.updateLogService(user);
		}
	}
	
	//인증내역보기
	@RequestMapping("/authHistory.app")
	public String authHistory(HttpSession session, Model model){
		System.out.println("authHistory ok");
		
		List<Object> list = service.historyService((UserVO)session.getAttribute("loginUser"));
		model.addAttribute("list", list); 
		
		return "ssgin/authHistory";
	}
	
	//통계보기
	@RequestMapping("/statistics.app")
	public String statistics(){
		System.out.println("statistics ok");
		return "ssgin/statistics";
	}
	
	//블록정보보기
	@RequestMapping("/myBlockInfo.app")
	public String myBlockInfo(){
		System.out.println("myBlockInfo ok");
		return "ssgin/myBlockInfo";
	}
	
	//SSG IN 소개 보기
	@RequestMapping("/ssginInfo.app")
	public String ssginInfo(){
		System.out.println("statistics ok");
		return "ssgin/statistics";
	}
}
