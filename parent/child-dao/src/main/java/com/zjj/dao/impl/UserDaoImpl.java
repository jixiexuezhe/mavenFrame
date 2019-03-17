package com.zjj.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.zjj.common.util.HqlUtil;
import com.zjj.dao.UserDao;
import com.zjj.model.User;

@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	@SuppressWarnings("unchecked")
	public List<User> get(Map<String, Object> params) {
		String hql = "select u from User u";
		return (List<User>) find(HqlUtil.generateHql(hql, getConditions(), params), params);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> doFindAll(Map<String, Object> params) {
		String hql="select user from User user ";
		return (List<Map<String, Object>>) find(HqlUtil.generateHql(hql, getConditions(), params), params);
	}

	@Override
	protected List<String> getConditions() {
		List<String> conditions = new ArrayList<String>();
		conditions.add("u.id=:userId");
		conditions.add("u.accountNum=:accountNum");
		conditions.add("u.password=:password");
		return conditions;
	}

}
