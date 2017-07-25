package com.sailing.service.course;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sailing.dao.CourseOrganizationMapper;
import com.sailing.entity.CourseOrganization;

/**
 * Created by 25824 on 2017/7/22.
 */
@Service
public class CourseOrganizationServiceImpl
        implements CourseOrganizationService {
	@Autowired
	CourseOrganizationMapper courseOrganizationMapper;

	@Override
	public void deleteById(Integer id) {
		courseOrganizationMapper.deleteById(id);
	}

	@Override
	public void deleteByOrganId(Integer organizationId) {
		courseOrganizationMapper.deleteByOrganId(organizationId);
	}

	@Override
	public void deleteByCourseOrgan(Integer courseId, Integer organizationId) {
		courseOrganizationMapper.deleteByCourseOrgan(courseId,organizationId);
	}

	@Override
	public void insert(CourseOrganization record) {
		courseOrganizationMapper.insert(record);
	}

	@Override
	public void insertSelective(CourseOrganization record) {
		courseOrganizationMapper.insertSelective(record);
	}

	@Override
	public CourseOrganization selectById(Integer id) {
		return courseOrganizationMapper.selectById(id);
	}

	@Override
	public void updateByIdSelective(CourseOrganization record) {
		courseOrganizationMapper.updateByIdSelective(record);
	}

	@Override
	public void updateById(CourseOrganization record) {
		courseOrganizationMapper.updateByIdSelective(record);
	}

	@Override
	public List<CourseOrganization> selectAll() {
		return courseOrganizationMapper.selectAll();
	}
}
