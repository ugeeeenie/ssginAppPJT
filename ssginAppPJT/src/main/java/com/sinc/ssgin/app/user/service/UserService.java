package com.sinc.ssgin.app.user.service;

import java.util.List;
import java.util.Map;

import com.sinc.ssgin.app.model.vo.LogVO;
import com.sinc.ssgin.app.model.vo.UserVO;

public interface UserService {
	void joinService(UserVO user);
	UserVO loginUserService(UserVO user);
	void insertLogService(LogVO log);
	void deleteUserService(UserVO user);
	void deleteLogService(UserVO user);
	void updateUserFlagService(UserVO user);
	int getHistoryCount(UserVO user);
	List<Object> historyListService(Map<String, Object> map);
}
