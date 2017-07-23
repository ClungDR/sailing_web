package com.sailing.service.file;

import com.sailing.entity.Audio;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-config.xml")
public class AudioServiceTest {
    @Autowired
    AudioService audioService;

    @Test
    public void selectByUserId() throws Exception {
        List<Audio> audios=audioService.selectByUserId("2017010001");
        audios.stream().forEach(s->System.out.println(s));

    }

    @Test
    public void selectAudios() throws Exception {
    }

}