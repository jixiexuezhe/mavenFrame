package com.zjj.service;

import java.util.List;
import java.util.Map;

import com.zjj.model.User;

public interface UserService {
//0000000000000000000000000
	List<Map<String, Object>> doFind(User user);
}
