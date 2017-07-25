package com.sailing.web.controller;

import com.sailing.entity.Video;
import com.sailing.service.file.AudioService;
import com.sailing.service.file.PPTService;
import com.sailing.service.file.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/search")
@Controller
public class SearchController {
    @Autowired
    VideoService videoService;
    @Autowired
    AudioService audioService;
    @Autowired
    PPTService pptService;

    @RequestMapping("")
    public String getSearchResult(String keyword, ModelMap modelMap){
        modelMap.put("videos",videoService.selectByKeyword("%"+keyword+"%"));
        modelMap.put("audios",audioService.selectByKeyword("%"+keyword+"%"));
        modelMap.put("ppts",pptService.selectByKeyWord("%"+keyword+"%"));
        modelMap.put("keyword",keyword);
        return "/search";
    }
}
