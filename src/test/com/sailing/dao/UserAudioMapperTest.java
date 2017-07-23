package com.sailing.dao;

import com.sailing.entity.UserAudio;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-config.xml")
public class UserAudioMapperTest {
    @Autowired
    UserAudioMapper userAudioMapper;

    @Test
    public void selectByUserId() throws Exception {
        UserAudio userAudio=userAudioMapper.selectByUserId("2017010001");
        System.out.println(userAudio);
    }

}