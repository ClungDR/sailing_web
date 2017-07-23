package com.sailing.service;

import com.sailing.dao.UserAudioMapper;
import com.sailing.entity.UserAudio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserAudioServiceImpl implements UserAudioService {
	@Autowired
	UserAudioMapper userAudioMapper;

	@Override
	public void deleteById(Integer id) {
		userAudioMapper.deleteById(id);
	}

	@Override
	public void insert(UserAudio record) {
		userAudioMapper.insert(record);
	}

	@Override
	public void insertSelective(UserAudio record) {
		userAudioMapper.insertSelective(record);
	}

	@Override
	public UserAudio selectById(Integer id) {
		return userAudioMapper.selectById(id);
	}

	@Override
	public void updateByIdSelective(UserAudio record) {
		userAudioMapper.updateByIdSelective(record);
	}

	@Override
	public void updateById(UserAudio record) {
		userAudioMapper.updateById(record);
	}

	@Override
	public UserAudio selectByUserId(String userId) {
		return userAudioMapper.selectByUserId(userId);
	}
}
