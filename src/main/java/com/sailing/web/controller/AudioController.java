package com.sailing.web.controller;

import com.sailing.entity.Audio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sailing.entity.UserAudio;
import com.sailing.service.file.AudioService;

import java.util.List;

@Controller
@RequestMapping("/audio")
public class AudioController {
	@Autowired
	AudioService audioService;

	@RequestMapping("")
	public String getAudioPage() {
		return "audio/audio";
	}

	@RequestMapping("/getAudioList")
	@ResponseBody
	public List<Audio> getAudioList(String userId) {
		return audioService.selectByUserId(userId);
	}
}
