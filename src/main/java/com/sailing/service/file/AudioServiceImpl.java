package com.sailing.service.file;

import com.sailing.dao.AudioMapper;
import com.sailing.entity.Audio;
import com.sailing.entity.UserAudio;
import com.sailing.service.UserAudioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AudioServiceImpl implements AudioService {
	@Autowired
	AudioMapper audioMapper;
	@Autowired
    UserAudioService userAudioService;

	@Override
	public void deleteById(Integer id) {
		audioMapper.deleteById(id);
	}

	@Override
	public void insert(Audio record) {
		audioMapper.insert(record);
	}

	@Override
	public void insertSelective(Audio record) {
		audioMapper.insertSelective(record);
	}

	@Override
	public Audio selectById(Integer id) {
		return audioMapper.selectById(id);
	}

	@Override
	public void updateByIdSelective(Audio record) {
		audioMapper.updateByIdSelective(record);
	}

	@Override
	public void updateById(Audio record) {
		audioMapper.updateById(record);
	}

    @Override
    public List<Audio> selectByUserId(String userId) {
	    UserAudio userAudio= userAudioService.selectByUserId(userId);
        return selectAudios(userAudio.getAudioIds());
    }

    @Override
	public List<Audio> selectAudios(List<Integer> ids) {
		List<Audio> audios=new ArrayList<>();
		for (Integer id : ids) {
			audios.add(selectById(id));
		}
		return audios;
	}


}
