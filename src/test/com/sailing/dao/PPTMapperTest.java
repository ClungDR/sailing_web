package com.sailing.dao;

import com.sailing.entity.PPT;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-config.xml")
public class PPTMapperTest {
    @Autowired
    PPTMapper pptMapper;

    @Test
    public void selectByKeyWorld() throws Exception {
        List<PPT> files=pptMapper.selectByKeyWord("%互连%");
        files.stream().forEach(s->System.out.println(s));
    }

}