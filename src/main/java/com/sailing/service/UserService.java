package com.sailing.service;

import com.sailing.entity.User;

import java.util.Collection;
import java.util.List;
import java.util.Set;


public interface UserService {

    /**
     * 创建用户
     * @param user
     */
    public User insertUser(User user);

    public User updateUser(User user);

    public void deleteUser(String userId);

    /**
     * 修改密码
     * @param userId
     * @param newPassword
     */
    public void changePassword(String userId, String newPassword);


    User selectById(String userId);

    List<User> selectAll();

    /**
     * 根据用户名查找用户
     * @param username
     * @return
     */
    public User selectByUsername(String username);

    /**
     * 根据用户名查找其角色
     * @param Id
     * @return
     */
    public Set<String> selectRoles(String Id);

    /**
     * 根据用户名查找其权限
     * @param Id
     * @return
     */
    public Set<String> selectPermissions(String Id);

    List<User> selectAllById(Collection<String> id);
}
