package com.sailing.service;

import java.util.List;
import java.util.Set;

import com.sailing.entity.Role;


public interface RoleService {


    public Role createRole(Role role);
    public Role updateRole(Role role);
    public void deleteRole(Integer roleId);

    public Role selectOne(Integer roleId);
    public List<Role> selectAll();

    /**
     * 根据角色编号得到角色标识符列表
     * @param roleIds
     * @return
     */
    Set<String> selectRoles(Integer... roleIds);

    /**
     * 根据角色编号得到权限字符串列表
     * @param roleIds
     * @return
     */
    Set<String> selectPermissions(Integer[] roleIds);
}
