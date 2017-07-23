package com.sailing.service.course;

import com.sailing.entity.Course;

import java.util.List;

/**
 * Created by 25824 on 2017/7/21.
 */
public interface CourseService {
    void deleteById(Integer id);

    void insert(Course record);

    void insertSelective(Course record);

    Course selectById(Integer id);

    void updateByIdSelective(Course record);

    void updateById(Course record);

    List<Course> selectAll();
}
