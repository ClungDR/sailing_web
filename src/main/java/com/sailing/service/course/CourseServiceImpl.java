package com.sailing.service.course;

import com.sailing.dao.CourseMapper;
import com.sailing.entity.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {
	@Autowired
	CourseMapper courseMapper;

	@Override
	public void deleteById(Integer id) {
		courseMapper.deleteById(id);
	}

	@Override
	public void insert(Course record) {
		courseMapper.insert(record);
	}

	@Override
	public void insertSelective(Course record) {
		courseMapper.insertSelective(record);
	}

	@Override
	public Course selectById(Integer id) {
		return courseMapper.selectById(id);
	}

	@Override
	public void updateByIdSelective(Course record) {
		courseMapper.updateByIdSelective(record);
	}

	@Override
	public void updateById(Course record) {
		courseMapper.updateById(record);
	}

	@Override
	public List<Course> selectAll() {
		return courseMapper.selectAll();
	}
}
