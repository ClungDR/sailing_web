package com.sailing.dao;

import org.springframework.stereotype.Repository;

import com.sailing.entity.Organization;

@Repository
public interface OrganizationMapper {
    int deleteById(Integer id);

    int insert(Organization record);

    int insertSelective(Organization record);

    Organization selectById(Integer id);

    int updateByIdSelective(Organization record);

    int updateById(Organization record);
}