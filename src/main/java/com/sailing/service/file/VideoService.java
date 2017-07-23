package com.sailing.service.file;

import com.sailing.entity.Video;

import java.util.Set;

public interface VideoService {
    void deleteById(Integer id);

    void insert(Video record);

    void insertSelective(Video record);

    Video selectById(Integer id);

    void updateByIdSelective(Video record);

    void updateById(Video record);

    Set<String> selectPermissions(Integer id);
}
