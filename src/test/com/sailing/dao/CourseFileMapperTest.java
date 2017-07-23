package com.sailing.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;
import java.util.Set;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-config.xml")
public class CourseFileMapperTest {
    @Autowired
    CourseFileMapper courseFileMapper;

    @Test
    public void deleteById() throws Exception {
    }

    @Test
    public void insert() throws Exception {
    }

    @Test
    public void insertSelective() throws Exception {
    }

    @Test
    public void selectById() throws Exception {
    }

    @Test
    public void updateByIdSelective() throws Exception {
    }

    @Test
    public void updateById() throws Exception {
    }

    @Test
    public void selectCourseIdByFile() throws Exception {
        Set<Integer> courseIds=courseFileMapper.selectCourseIdByFile(2,4);
        System.out.println("dgashgdask"+courseIds);
    }

}