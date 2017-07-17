package com.sailing.service;

import java.util.*;

import com.sailing.dao.UserMapper;
import com.sailing.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	@Autowired
	private RoleService roleService;

	/**
	 * 创建用户
	 * 
	 * @param user
	 */
	public User insertUser(User user) {

		userMapper.insert(user);
		return user;
	}

	@Override
	public User updateUser(User user) {
		userMapper.updateById(user);
		return user;
	}

	@Override
	public void deleteUser(String userId) {
		userMapper.deleteById(userId);
	}

	/**
	 * 修改密码
	 * 
	 * @param userId
	 * @param newPassword
	 */
	public void changePassword(String userId, String newPassword) {
		User user = userMapper.selectById(userId);
		user.setPassword(newPassword);
		userMapper.updateById(user);
	}

	@Override
	public User selectById(String userId) {
		return userMapper.selectById(userId);
	}

	@Override
	public List<User> selectAll() {
		// return userMapper.selectAll();
		return null;
	}

	/**
	 * 根据用户名查找用户
	 * 
	 * @param username
	 * @return
	 */
	public User selectByUsername(String username) {
		return userMapper.selectByUsername(username);
	}

	/**
	 * 根据用户名查找其角色
	 * 
	 * @param username
	 * @return
	 */
	public Set<String> selectRoles(String username) {
		User user = selectByUsername(username);
		if (user == null) {
			return Collections.EMPTY_SET;
		}
		return roleService.selectRoles(user.getRoleIds().toArray(new Integer[0]));
	}

	/**
	 * 根据用户名查找其权限
	 * 
	 * @param username
	 * @return
	 */
	public Set<String> selectPermissions(String username) {
		User user = selectByUsername(username);
		if (user == null) {
			return Collections.EMPTY_SET;
		}
		return roleService
		        .selectPermissions(user.getRoleIds().toArray(new Integer[0]));
	}

	@Override
	public List<User> selectAllById(Collection<String> userIds) {
		List<User> users = new ArrayList<>();
		for (String userId : userIds) {
			User user =selectById(userId);
			if (user != null)
				users.add(user);
		}
		return users;
	}

}
