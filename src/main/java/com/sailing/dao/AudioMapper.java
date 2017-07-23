package com.sailing.dao;

import com.sailing.entity.Audio;
import org.springframework.stereotype.Repository;

@Repository
public interface AudioMapper {
    int deleteById(Integer id);

    int insert(Audio record);

    int insertSelective(Audio record);

    Audio selectById(Integer id);

    int updateByIdSelective(Audio record);

    int updateById(Audio record);
}