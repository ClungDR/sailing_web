package com.sailing.dao;

import com.sailing.entity.Course;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CourseMapper {
    int deleteById(Integer id);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectById(Integer id);

    int updateByIdSelective(Course record);

    int updateById(Course record);

    List<Course> selectAll();
}