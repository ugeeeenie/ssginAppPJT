package com.sinc.ssgin.app.user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sinc.ssgin.app.model.vo.UserVO;
import com.sinc.ssgin.app.user.dao.UserDao;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource(name="userDao")
	private UserDao dao;
	
	@Override
	public void joginService(UserVO user) {
		System.out.println("joinService OK");
		
		dao.joinRow(user);
	}

	@Override
	public List<Object> historyService(UserVO user) {
		System.out.println("historyService OK");
		
		return dao.historyRow(user);
	}
	
}
