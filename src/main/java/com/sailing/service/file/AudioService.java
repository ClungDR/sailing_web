package com.sailing.service.file;

import com.sailing.entity.Audio;

import java.util.List;

/**
 * Created by 25824 on 2017/7/20.
 */
public interface AudioService {
    void deleteById(Integer id);

    void insert(Audio record);

    void insertSelective(Audio record);

    Audio selectById(Integer id);

    void updateByIdSelective(Audio record);

    void updateById(Audio record);

    List<Audio> selectByUserId(String userId);

    List<Audio> selectAudios(List<Integer> ids);

    List<Audio> selectByKeyword(String keyword);
}
