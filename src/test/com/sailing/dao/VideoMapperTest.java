package com.sailing.dao;

import com.sailing.entity.Video;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-config.xml")
public class VideoMapperTest {
    @Autowired
    VideoMapper videoMapper;

    @Test
    public void selectByKeyword() throws Exception {
        List<Video> videos= videoMapper.selectByKeyword("%巨人%");
        videos.stream().forEach(s->System.out.println(s));
    }

}