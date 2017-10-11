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
	public String loginForm(UserVO user){
		System.out.println("loginform ctrl ok");
		//InfoVO result=service.LoginServiceRow(userInfo);
		//System.out.println(result.getId());
		return "ssgin/loginForm";
	}
	
	//회원가입폼페이지
	@RequestMapping("/joinForm.app")
	public String joinForm(InfoVO userInfo, HttpSession session){
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
		service.joginService(user);
		
		session.setAttribute("loginUser", user);
		
		System.out.println("ctrl join success");
	}
	
	//약관동의페이지
	@RequestMapping("/userAgree.app")
	public String userAgreeForm(InfoVO userInfo){
		System.out.println("useragreeform ok");
		return "ssgin/userAgreeForm";	
	}

	//메인페이지
	@RequestMapping("/main.app")
	public String mainForm(InfoVO userInfo){
		System.out.println("mainform ok");
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
}
