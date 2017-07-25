package com.sailing.dao;

import com.sailing.entity.Note;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface NoteMapper {
    int deleteById(Integer id);

    int insert(Note record);

    int insertSelective(Note record);

    Note selectById(Integer id);

    int updateByIdSelective(Note record);

    int updateById(Note record);

    List<Note> selectAllByFile(Note note);

    List<Note> selectAllByUserId(String userId);

}