package com.sailing.service;

import com.sailing.entity.UserAudio;


public interface UserAudioService {
    void deleteById(Integer id);

    void insert(UserAudio record);

    void insertSelective(UserAudio record);

    UserAudio selectById(Integer id);

    void updateByIdSelective(UserAudio record);

    void updateById(UserAudio record);

    UserAudio selectByUserId(String userId);
}
