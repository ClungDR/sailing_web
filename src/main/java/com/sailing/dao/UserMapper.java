package com.sailing.dao;

import com.sailing.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    int deleteById(String id);

    int insert(User record);

    int insertSelective(User record);

    User selectById(String id);

    int updateByIdSelective(User record);

    int updateById(User record);

    User selectByUsername(String username);
}