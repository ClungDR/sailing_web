package com.sailing.dao;

import com.sailing.entity.CourseOrganization;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CourseOrganizationMapper {
    int deleteById(Integer id);

    int deleteByOrganId(Integer organizationId);

    int deleteByCourseOrgan(@Param("courseId") Integer courseId,@Param("organizationId") Integer organizationId);

    int insert(CourseOrganization record);

    int insertSelective(CourseOrganization record);

    CourseOrganization selectById(Integer id);

    int updateByIdSelective(CourseOrganization record);

    int updateById(CourseOrganization record);

    List<CourseOrganization> selectAll();
}