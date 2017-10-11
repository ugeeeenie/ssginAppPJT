package com.sinc.ssgin.app.user.dao;

import java.util.List;

import com.sinc.ssgin.app.model.vo.UserVO;

public interface UserDao {
	void joinRow(UserVO user);
	List<Object> historyRow(UserVO user);
}
