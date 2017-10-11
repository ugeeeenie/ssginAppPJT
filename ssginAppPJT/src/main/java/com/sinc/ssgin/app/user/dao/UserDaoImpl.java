package com.sinc.ssgin.app.user.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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

}
