package com.sinc.ssgin.app.user.dao;

import java.util.List;

import com.sinc.ssgin.app.model.vo.LogVO;
import com.sinc.ssgin.app.model.vo.UserVO;

public interface UserDao {
	void joinRow(UserVO user);
	List<Object> historyRow(UserVO user);
	UserVO loginUserRow(UserVO user);
	void insertLogRow(LogVO log);
	void deleteUserRow(UserVO user);
	void deleteLogRow(UserVO user);
	void expiredHistoryRow();
}