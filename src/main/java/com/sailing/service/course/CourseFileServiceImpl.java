package com.sailing.service.course;

import com.sailing.dao.CourseFileMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sailing.entity.CourseFile;

import java.util.List;
import java.util.Set;


@Service
public class CourseFileServiceImpl implements CourseFileService {
	@Autowired
	CourseFileMapper courseFileMapper;

	@Override
	public void deleteById(Integer id) {
		courseFileMapper.deleteById(id);
	}

	@Override
	public void insert(CourseFile record) {
		courseFileMapper.insert(record);
	}

	@Override
	public void insertSelective(CourseFile record) {
		courseFileMapper.insertSelective(record);
	}

	@Override
	public CourseFile selectById(Integer id) {
		return courseFileMapper.selectById(id);
	}

	@Override
	public void updateByIdSelective(CourseFile record) {
		courseFileMapper.updateByIdSelective(record);
	}

	@Override
	public void updateById(CourseFile record) {
		courseFileMapper.updateById(record);
	}

	@Override
	public Set<Integer> selectCourseIdByFile(Integer fileId, Integer fileType) {
		return null;
	}

    @Override
    public void insertCourseFiles(CourseFile cf, List<Integer> courseIds) {
        for (Integer courseId : courseIds) {
            cf.setCourseId(courseId);
            insertSelective(cf);
        }
    }


}
