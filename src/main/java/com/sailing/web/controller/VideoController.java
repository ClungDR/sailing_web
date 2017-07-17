package com.sailing.web.controller;

import com.sailing.entity.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sailing.constant.MyConstants;
import com.sailing.entity.Answer;
import com.sailing.entity.Discuss;
import com.sailing.entity.Question;
import com.sailing.entity.User;
import com.sailing.service.AnswerService;
import com.sailing.service.DiscussService;
import com.sailing.service.QuestionService;

@Controller
@RequestMapping("/video")
public class VideoController extends BaseController {
	@Autowired
	DiscussService discussService;
	@Autowired
	AnswerService answerService;
	@Autowired
	QuestionService questionService;

	/**
	 * 读取视频，返回视频播放页面
	 * 
	 * @return
	 */
	@RequestMapping("")
	public String videoPlay() {

		return "video/video";
	}

	/**
	 * 添加讨论
	 * 
	 * @param content
	 *            讨论内容
	 * @param videoId
	 *            视频id
	 * @return
	 */
	@RequestMapping("/add-discuss")
	@ResponseBody
	public DiscussUser addDiscuss(String content, int videoId) {
		User user = (User) session.getAttribute(MyConstants.CURRENT_USER);
		Discuss discuss = new Discuss(user.getId(), content, videoId);
		discussService.insert(discuss);
		DiscussUser discussWrap = new DiscussUser(
		        discussService.selectById(discuss.getId()), (User) session.getAttribute(MyConstants.CURRENT_USER));
		return discussWrap;
	}

	/**
	 * 添加问题
	 * 
	 * @param description
	 * @return
	 */
	@RequestMapping("/add-question")
    @ResponseBody
	public QuestionUser addComment(String description, Integer videoId) {
		Question question = new Question(description, videoId);
		question.setUserId((String) session.getAttribute(MyConstants.CURRENT_USER_ID));
		questionService.insertSelective(question);
		question=questionService.selectById(question.getId());
		User user= (User) session.getAttribute(MyConstants.CURRENT_USER);
        QuestionUser qu=new QuestionUser(question,user);
		return qu;
	}

	@RequestMapping("/add-answer")
	@ResponseBody
	public AnswerUser addAnswer(Answer answer){
		if(answer.getQuestionId()==null||answer.getContent()==null){
			return null;
		}
		answer.setUserId((String) session.getAttribute(MyConstants.CURRENT_USER_ID));
		answerService.insertSelective(answer);
		answer=answerService.selectById(answer.getId());
		User user= (User) session.getAttribute(MyConstants.CURRENT_USER);
		AnswerUser au=new AnswerUser(answer,user);
		return au;
	}

	/**
	 * 返回所有问答的数据
	 * 
	 * @param videoId
	 * @return
	 */
	@RequestMapping("/questionWrapUser")
	@ResponseBody
	public QuestionWrapUser getQuestionWrap(Integer videoId) {
		if (videoId != null && videoId > 0) {
			return questionService.selectAllQuestionWrapByVideoId(videoId);
		} else
			return null;
	}
	@RequestMapping("/discussUserWrap")
    @ResponseBody
    public DiscussUserWrap getDiscussUserWrap(Integer videoId){
	    DiscussUserWrap duw=discussService.selectDiscussUserByVideoId(videoId);
	    if(duw==null)return null;
	    return duw;
    }

}
