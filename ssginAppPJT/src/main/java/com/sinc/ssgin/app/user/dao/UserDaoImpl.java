package com.sinc.ssgin.app.user.dao;

import java.util.List;
import java.util.Map;

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
	public UserVO loginUserRow(UserVO user) {
		System.out.println("loginUserRow ok");
		return session.selectOne(PREFIX+"loginUser", user);
	}

	@Override
	public void insertLogRow(LogVO log) {
		System.out.println("insertLogRow ok");
		session.insert(PREFIX+"insertLog", log);
	}

	@Override
	public void deleteUserRow(UserVO user) {
		System.out.println("delteUserRow ok");
		session.delete(PREFIX+"deleteUser", user);
	}

	@Override
	public void deleteLogRow(UserVO user) {
		System.out.println("delteLogRow ok");
		session.delete(PREFIX+"deleteLog", user);
	}
	
	@Override
	public void updateUserFlagRow(UserVO user) {
		System.out.println("updateUserFlagRow ok");
		session.update(PREFIX+"updateFlag", user);
	}

	@Override
	public int getHistoryCountRow(UserVO user) {
		System.out.println("getHistoryCountRow ok");
		return session.selectOne(PREFIX+"historyCount", user);
	}

	@Override
	public List<Object> historyListRow(Map<String, Object> map) {
		System.out.println("historyListRow ok");
		return session.selectList(PREFIX+"history", map);
	}

}
