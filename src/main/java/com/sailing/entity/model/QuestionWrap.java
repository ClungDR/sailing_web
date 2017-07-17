package com.sailing.entity.model;

import com.sailing.entity.Answer;
import com.sailing.entity.Question;

import java.util.List;

/**
 * Created by 25824 on 2017/7/15.
 */
public class QuestionWrap {
	// 问题
	Question question;
	// 关于这个问题的回复
	List<Answer> answers;

	public QuestionWrap() {
	}

	public QuestionWrap(Question question, List<Answer> answers) {
		this.question = question;
		this.answers = answers;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public List<Answer> getAnswers() {
		return answers;
	}

	public void setAnswers(List<Answer> answers) {
		this.answers = answers;
	}

	@Override
	public String toString() {
		return "QuestionWrap{" + "question=" + question + "\n, answers="
		        + answers + "}\n";
	}
}
