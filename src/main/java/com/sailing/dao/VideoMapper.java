package com.sailing.dao;

import com.sailing.entity.Video;
import org.springframework.stereotype.Repository;

@Repository
public interface VideoMapper {
    int deleteById(Integer id);

    int insert(Video record);

    int insertSelective(Video record);

    Video selectById(Integer id);

    int updateByIdSelective(Video record);

    int updateById(Video record);
}