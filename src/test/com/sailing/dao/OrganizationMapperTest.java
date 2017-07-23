package com.sailing.dao;

import com.sailing.entity.Organization;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by 25824 on 2017/7/22.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-config.xml")
public class OrganizationMapperTest {
    @Autowired
    OrganizationMapper organizationMapper;

    @Test
    public void selectAll() throws Exception {
        List<Organization> organizations=organizationMapper.selectAll();
        organizations.stream().forEach(s->System.out.println(s));


    }


}