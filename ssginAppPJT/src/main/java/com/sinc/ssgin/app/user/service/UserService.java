package com.sinc.ssgin.app.user.service;

import java.util.List;

import com.sinc.ssgin.app.model.vo.UserVO;

public interface UserService {
	void joginService(UserVO user);
	List<Object> historyService(UserVO user);
}
