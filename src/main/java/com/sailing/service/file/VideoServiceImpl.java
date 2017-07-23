package com.sailing.service.file;

import com.sailing.constant.FileConstants;
import com.sailing.dao.VideoMapper;
import com.sailing.entity.Video;
import com.sailing.service.course.CourseFileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

@Service
public class VideoServiceImpl implements VideoService {
	@Autowired
	VideoMapper videoMapper;
	@Autowired
	CourseFileService courseFileService;

	@Override
	public void deleteById(Integer id) {
		videoMapper.deleteById(id);
	}

	@Override
	public void insert(Video record) {
		videoMapper.insert(record);
	}

	@Override
	public void insertSelective(Video record) {
		videoMapper.insertSelective(record);
	}

	@Override
	public Video selectById(Integer id) {
		return videoMapper.selectById(id);
	}

	@Override
	public void updateByIdSelective(Video record) {
		videoMapper.updateByIdSelective(record);
	}

	@Override
	public void updateById(Video record) {
		videoMapper.updateById(record);
	}

	@Override
	public Set<String> selectPermissions(Integer id) {
		Set<Integer> courseIds=courseFileService.selectCourseIdByFile(id, (int) FileConstants.VIDEO_FILE);

		return null;
	}
}
