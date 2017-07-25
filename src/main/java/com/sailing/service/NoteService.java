package com.sailing.service;


import com.sailing.entity.Note;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NoteService {
    void deleteById(Integer id);

    void insert(Note record);

    void insertSelective(Note record);

    Note selectById(Integer id);

    void updateByIdSelective(Note record);

    void updateById(Note record);

    List<Note> selectAllByFile(Note note);

    List<Note> selectAllByUserId(String userId);


}
