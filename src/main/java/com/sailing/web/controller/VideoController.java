package com.sailing.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sailing.entity.Video;
import com.sailing.service.file.VideoService;

@Controller
@RequestMapping("/video")
public class VideoController extends BaseController {


    @Autowired
    VideoService videoService;

	/**
	 * 读取视频，返回视频播放页面
	 * 
	 * @return
	 */
	@RequestMapping("")
	public String videoPlay(Integer videoId , ModelMap modelMap) {
        Video video=videoService.selectById(videoId);
        modelMap.addAttribute("video",video);
		return "video/video";
	}
	@RequestMapping("/getVideoUrl")
    @ResponseBody
    public Video getVideoUrl(Integer videoId){
	    Video video=videoService.selectById(videoId);
	    return video;
    }

	@RequestMapping("/test")
	public String videoPlayTest() {

		return "video/video-test";
	}




}
