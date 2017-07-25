package com.sailing.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sailing.constant.UserConstants;
import com.sailing.entity.Note;
import com.sailing.service.NoteService;

@RequestMapping("/note")
@Controller
public class NoteController extends BaseController {
	@Autowired
	NoteService noteService;

	@RequestMapping("/getAllByFile")
	@ResponseBody
	public List<Note> getAllByFile(Integer fileId, Integer fileType) {
        String userId= (String) session.getAttribute(UserConstants.CURRENT_USER_ID);
        Note note=new Note(userId,fileId,fileType);
        return noteService.selectAllByFile(note);
	}

    @RequestMapping("/getAllByUserId")
    @ResponseBody
    public List<Note> getAllByUserId(String userId) {
        return noteService.selectAllByUserId(userId);
    }
    @RequestMapping("/addNote")
    @ResponseBody
    public Note addNote(Note note) {
	    note.setUserId((String) session.getAttribute(UserConstants.CURRENT_USER_ID));
        noteService.insertSelective(note);
        note=noteService.selectById(note.getId());
        return note;
    }



}
