package com.sailing.dao;

import com.sailing.entity.CourseOrganization;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CourseOrganizationMapper {
    int deleteById(Integer id);

    int insert(CourseOrganization record);

    int insertSelective(CourseOrganization record);

    CourseOrganization selectById(Integer id);

    int updateByIdSelective(CourseOrganization record);

    int updateById(CourseOrganization record);

    List<CourseOrganization> selectAll();
}