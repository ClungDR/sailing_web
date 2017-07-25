package com.sailing.service.file;

import com.sailing.dao.PPTMapper;
import com.sailing.entity.PPT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PPTServiceImpl implements PPTService {
	@Autowired
	PPTMapper pptMapper;

	@Override
	public void deleteById(Integer id) {
		pptMapper.deleteById(id);
	}

	@Override
	public void insert(PPT record) {
		pptMapper.insert(record);
	}

	@Override
	public void insertSelective(PPT record) {
		pptMapper.insertSelective(record);
	}

	@Override
	public PPT selectById(Integer id) {
		return pptMapper.selectById(id);
	}

	@Override
	public void updateByIdSelective(PPT record) {
		pptMapper.updateByIdSelective(record);
	}

	@Override
	public void updateById(PPT record) {
		pptMapper.updateById(record);
	}

	@Override
	public List<PPT> selectByKeyWord(String keyword) {
		return pptMapper.selectByKeyWord(keyword);
	}
}
