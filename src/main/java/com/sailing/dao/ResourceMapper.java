package com.sailing.dao;

import org.springframework.stereotype.Repository;

import com.sailing.entity.Resource;

@Repository
public interface ResourceMapper {
    int deleteById(Integer id);

    int insert(Resource record);

    int insertSelective(Resource record);

    Resource selectById(Integer id);

    int updateByIdSelective(Resource record);

    int updateById(Resource record);
}