package com.sailing.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import com.sailing.dao.AnswerMapper;
import com.sailing.entity.Answer;
import com.sailing.entity.User;
import com.sailing.entity.model.QuestionWrap;
import com.sailing.entity.model.QuestionWrapUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sailing.dao.QuestionMapper;
import com.sailing.entity.Question;

@Service
public class QuestionServiceImpl implements QuestionService {
	@Autowired
	QuestionMapper questionMapper;
	@Autowired
	AnswerService answerService;
	@Autowired
	UserService userService;

	@Override
	public void deleteById(Integer id) {
		questionMapper.deleteById(id);
	}

	@Override
	public void insert(Question record) {
		questionMapper.insert(record);
	}

	@Override
	public void insertSelective(Question record) {
		questionMapper.insertSelective(record);
	}

	@Override
	public Question selectById(Integer id) {
		return questionMapper.selectById(id);
	}

	@Override
	public void updateById(Question record) {
		questionMapper.updateById(record);
	}

	@Override
	public List<Question> selectAllByVideoId(Integer videoId) {
		return questionMapper.selectAllByVideoId(videoId);
	}

	@Override
	public QuestionWrapUser selectAllQuestionWrapByVideoId(Integer videoId) {
		List<Question> questions = selectAllByVideoId(videoId);
		if (questions == null || questions.size() == 0)
			return null;
		Set<String> userIds = new HashSet<>();
		List<QuestionWrap> questionWraps = new ArrayList<>();
		for (Question question : questions) {
			userIds.add(question.getUserId());
			List<Answer> answers = answerService
			        .selectAllByQuestionId(question.getId());
			userIds.addAll(answers.parallelStream().map(Answer::getUserId)
			        .collect(Collectors.toList()));
			QuestionWrap wrap = new QuestionWrap(question, answers);
			questionWraps.add(wrap);
		}
        List<User> users=userService.selectAllById(userIds);
		QuestionWrapUser questionWrapUser = new QuestionWrapUser(questionWraps,
		        users);
		return questionWrapUser;
	}

}
