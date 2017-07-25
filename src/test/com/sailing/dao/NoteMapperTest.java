package com.sailing.dao;

import com.sailing.entity.Note;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import sun.plugin2.main.server.ServerPrintHelper;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-config.xml")
public class NoteMapperTest {
    @Autowired
    NoteMapper noteMapper;
    @Test
    public void selectByFile() throws Exception {

    }

    @Test
    public void selectAllByUserId() throws Exception {
        List<Note> notes=noteMapper.selectAllByUserId("2017010001");
        System.out.println(notes);
    }

}