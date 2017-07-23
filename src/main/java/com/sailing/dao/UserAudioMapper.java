package com.sailing.dao;

import com.sailing.entity.UserAudio;
import org.springframework.stereotype.Repository;

@Repository
public interface UserAudioMapper {
    int deleteById(Integer id);

    int insert(UserAudio record);

    int insertSelective(UserAudio record);

    UserAudio selectById(Integer id);

    int updateByIdSelective(UserAudio record);

    int updateById(UserAudio record);

    UserAudio selectByUserId(String userId);
}