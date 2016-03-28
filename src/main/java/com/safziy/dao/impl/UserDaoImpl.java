package com.safziy.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safziy.dao.UserDao;
import com.safziy.vo.User;

@Repository("userDao")
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public List<User> list() {
		return getSqlSession().selectList("com.safziy.vo.user.mapper.list");
	}

}
