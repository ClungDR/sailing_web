package com.sailing.web.controller;

import com.sailing.constant.UserConstants;
import com.sailing.entity.Answer;
import com.sailing.entity.Question;
import com.sailing.entity.User;
import com.sailing.entity.model.AnswerUser;
import com.sailing.entity.model.DiscussUserWrap;
import com.sailing.entity.model.QuestionUser;
import com.sailing.entity.model.QuestionWrapUser;
import com.sailing.service.AnswerService;
import com.sailing.service.QuestionService;
import com.sailing.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/question")
@Controller
public class QuestionController extends BaseController {
	@Autowired
	AnswerService answerService;
	@Autowired
	QuestionService questionService;

	@Autowired
	UserService userService;

	/**
	 * 添加问题
	 *
	 * @param description
	 * @return
	 */
	@RequestMapping("/addQuestion")
	@ResponseBody
	public QuestionUser addQuestion(String description, Integer videoId,
	        String userId) {
		Question question = new Question(description, videoId);
		question.setUserId(
		        (String) session.getAttribute(UserConstants.CURRENT_USER_ID));
		questionService.insertSelective(question);
		question = questionService.selectById(question.getId());
		User user = null;
		if (!StringUtils.isEmpty(userId)) {
			user = userService.selectById(userId);
		} else
			user = (User) session.getAttribute(UserConstants.CURRENT_USER);
		QuestionUser qu = new QuestionUser(question, user);
		return qu;
	}

	@RequestMapping("/addAnswer")
	@ResponseBody
	public AnswerUser addAnswer(Answer answer) {
		if (answer.getQuestionId() == null || answer.getContent() == null) {
			return null;
		}
		answer.setUserId(
		        (String) session.getAttribute(UserConstants.CURRENT_USER_ID));
		answerService.insertSelective(answer);
		answer = answerService.selectById(answer.getId());
		User user = (User) session.getAttribute(UserConstants.CURRENT_USER);
		AnswerUser au = new AnswerUser(answer, user);
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

}
