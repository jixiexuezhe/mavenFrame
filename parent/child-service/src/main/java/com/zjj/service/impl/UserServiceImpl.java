package com.zjj.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.zjj.dao.UserDao;
import com.zjj.dao.impl.UserDaoImpl;
import com.zjj.model.User;
import com.zjj.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userDao;

	public List<Map<String, Object>> doFind(User user) {
		Map<String, Object> params=new HashMap<String, Object>();
		return userDao.doFindAll(params);
	}
	
}
