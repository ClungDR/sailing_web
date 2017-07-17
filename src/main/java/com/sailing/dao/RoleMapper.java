package com.sailing.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sailing.entity.Role;

@Repository
public interface RoleMapper {
    int deleteById(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectById(Integer id);

    List<Role> selectAll();

    int updateByIdSelective(Role record);

    int updateById(Role record);
}