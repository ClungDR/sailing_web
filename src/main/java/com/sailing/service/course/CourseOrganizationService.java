package com.sailing.service.course;

import java.util.List;

import com.sailing.entity.CourseOrganization;

/**
 * Created by 25824 on 2017/7/22.
 */
public interface CourseOrganizationService {
    void deleteById(Integer id);

    void deleteByOrganId(Integer organizationId);

    void deleteByCourseOrgan(Integer courseId,Integer organizationId);


    void insert(CourseOrganization record);

    void insertSelective(CourseOrganization record);

    CourseOrganization selectById(Integer id);

    void updateByIdSelective(CourseOrganization record);

    void updateById(CourseOrganization record);

    List<CourseOrganization> selectAll();

}
