package com.sinc.ssgin.app.user.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sinc.ssgin.app.model.vo.LogVO;
import com.sinc.ssgin.app.model.vo.UserVO;

@Repository("userDao")
public class UserDaoImpl implements UserDao{
	
	public static final String PREFIX="com.sinc.ssgin.app.mapper.";
	
	@Resource(name="sqlSession")
	private SqlSession session;

	@Override
	public void joinRow(UserVO user) {
		System.out.println("joinRow ok");
		session.insert(PREFIX+"insert", user);
	}

	@Override
	public List<Object> historyRow(UserVO user) {
		System.out.println("historyRow ok");
		return session.selectList(PREFIX+"history", user);
	}

	@Override
	public UserVO loginUserRow(UserVO user) {
		System.out.println("loginUserRow ok");
		return session.selectOne(PREFIX+"loginUser", user);
	}

	@Override
	public void insertLogRow(LogVO log) {
		System.out.println("insertLogRow ok");
		session.selectOne(PREFIX+"insertLog", log);
	}

	@Override
	public void deleteUserRow(UserVO user) {
		System.out.println("delteUserRow ok");
		session.selectOne(PREFIX+"deleteUser", user);
	}

	@Override
	public void deleteLogRow(UserVO user) {
		System.out.println("delteLogRow ok");
		session.selectOne(PREFIX+"deleteLog", user);
	}

	@Override
	public void expiredHistoryRow() {
		System.out.println("expiredHistory ok");
		session.selectOne(PREFIX+"expiredHistory");
	}

}
