package com.sailing.dao;

import com.sailing.entity.Audio;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AudioMapper {
    int deleteById(Integer id);

    int insert(Audio record);

    int insertSelective(Audio record);

    Audio selectById(Integer id);

    int updateByIdSelective(Audio record);

    int updateById(Audio record);

    List<Audio> selectByKeyword(String keyword);
}