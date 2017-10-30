package com.sinc.ssgin.app.main.ctrl;

import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainCtrl {
	
	@RequestMapping("/intro.app")
	public String main(HttpSession session) {
		System.out.println("MainCtrl main");
		
		try {
			InetAddress local = InetAddress.getLocalHost();
			session.setAttribute("ip", local.getHostAddress());
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		
		if(session.getAttribute("loginUser") != null){
			return "redirect:/ssgin/loginForm.app";
		}
		
		return "intro";
	}
}