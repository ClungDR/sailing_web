package com.sailing.service.course;

import com.sailing.entity.CourseFile;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;


public interface CourseFileService {
    void deleteById(Integer id);

    void insert(CourseFile record);

    void insertSelective(CourseFile record);

    CourseFile selectById(Integer id);

    void updateByIdSelective(CourseFile record);

    void updateById(CourseFile record);

    Set<Integer> selectCourseIdByFile(@Param("fileId") Integer fileId, @Param("fileType") Integer fileType);

    void insertCourseFiles(CourseFile cf, List<Integer> courseIds);
}
