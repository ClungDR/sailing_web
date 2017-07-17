package com.sailing.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sailing.dao.RoleMapper;
import com.sailing.entity.Role;


@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private ResourceService resourceService;

    public Role createRole(Role role) {
        roleMapper.insert(role);
        return role;
    }

    public Role updateRole(Role role) {
        roleMapper.updateById(role);
        return role;
    }

    public void deleteRole(Integer roleId) {
        roleMapper.deleteById(roleId);
    }

    @Override
    public Role selectOne(Integer roleId) {
        return roleMapper.selectById(roleId);
    }

    @Override
    public List<Role> selectAll() {
        return roleMapper.selectAll();
    }

    @Override
    public Set<String> selectRoles(Integer... roleIds) {
        Set<String> roles = new HashSet<String>();
        for(Integer roleId : roleIds) {
            Role role = selectOne(roleId);
            if(role != null) {
                roles.add(role.getRole());
            }
        }
        return roles;
    }

    @Override
    public Set<String> selectPermissions(Integer[] roleIds) {
        Set<Integer> resourceIds = new HashSet<Integer>();
        for(Integer roleId : roleIds) {
            Role role = selectOne(roleId);
            if(role != null) {
                resourceIds.addAll(role.getResourceIds());
            }
        }
        return resourceService.selectPermissions(resourceIds);
    }
}
