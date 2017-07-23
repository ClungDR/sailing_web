package com.sailing.dao;

import com.sailing.entity.CourseOrganization;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-config.xml")
public class CourseOrganizationMapperTest {
    @Autowired
    CourseOrganizationMapper courseOrganizationMapper;

    @Test
    public void selectAll() throws Exception {
        List<CourseOrganization> cos=courseOrganizationMapper.selectAll();
        cos.stream().forEach(s->System.out.println(s));

    }

}