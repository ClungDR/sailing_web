package com.sailing.dao;

import com.sailing.entity.CourseFile;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public interface CourseFileMapper {
    int deleteById(Integer id);

    int insert(CourseFile record);

    int insertSelective(CourseFile record);

    CourseFile selectById(Integer id);

    int updateByIdSelective(CourseFile record);

    int updateById(CourseFile record);

    Set<Integer> selectCourseIdByFile(@Param("fileId") Integer fileId, @Param("fileType") Integer fileType);
}