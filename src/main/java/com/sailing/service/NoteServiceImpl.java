package com.sailing.service;

import java.util.List;

import com.sailing.dao.NoteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sailing.entity.Note;

/**
 * Created by 25824 on 2017/7/24.
 */
@Service
public class NoteServiceImpl implements NoteService {
	@Autowired
	NoteMapper noteMapper;

	@Override
	public void deleteById(Integer id) {
		noteMapper.deleteById(id);
	}

	@Override
	public void insert(Note record) {
		noteMapper.insert(record);
	}

	@Override
	public void insertSelective(Note record) {
		noteMapper.insertSelective(record);
	}

	@Override
	public Note selectById(Integer id) {
		return noteMapper.selectById(id);
	}

	@Override
	public void updateByIdSelective(Note record) {
		noteMapper.updateByIdSelective(record);
	}

	@Override
	public void updateById(Note record) {
		noteMapper.updateById(record);
	}

	@Override
	public List<Note> selectAllByFile(Note note) {
		return noteMapper.selectAllByFile(note);
	}

	@Override
	public List<Note> selectAllByUserId(String userId) {

		return noteMapper.selectAllByUserId(userId);
	}
}
