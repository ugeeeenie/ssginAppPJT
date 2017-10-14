package com.sinc.ssgin.app.user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sinc.ssgin.app.model.vo.LogVO;
import com.sinc.ssgin.app.model.vo.UserVO;
import com.sinc.ssgin.app.user.dao.UserDao;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource(name="userDao")
	private UserDao dao;
	
	@Override
	public void joinService(UserVO user) {
		System.out.println("joinService OK");
		
		dao.joinRow(user);
	}

	@Override
	public List<Object> historyService(UserVO user) {
		System.out.println("historyService OK");
		
		return dao.historyRow(user);
	}

	@Override
	public UserVO loginUserService(UserVO user) {
		System.out.println("loginUser OK");
		
		return dao.loginUserRow(user);
	}

	@Override
	public void insertLogService(LogVO log) {
		System.out.println("insertLogService OK");
		
		dao.insertLogRow(log);
	}

	@Override
	public void deleteUserService(UserVO user) {
		System.out.println("deleteUser OK");
		
		dao.deleteUserRow(user);
	}

	@Override
	public void deleteLogService(UserVO user) {
		System.out.println("deleteLog OK");
		
		dao.deleteLogRow(user);
	}

	@Override
	public void expiredHistoryService() {
		System.out.println("expiredHistoryService OK");
		
		dao.expiredHistoryRow();
	}
	
}
