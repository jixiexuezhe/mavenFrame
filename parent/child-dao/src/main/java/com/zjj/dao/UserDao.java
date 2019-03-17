package com.zjj.dao;

import java.util.List;
import java.util.Map;

import com.zjj.model.User;

public interface UserDao  extends BaseDao<User>{

	List<Map<String, Object>> doFindAll(Map<String, Object> params);

}
