package com.sailing.service;

import com.sailing.dao.AnswerMapper;
import com.sailing.dao.support.AnswerPageView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sailing.entity.Answer;

import java.util.List;

@Service
public class AnswerServiceImpl implements AnswerService{
    @Autowired
    AnswerMapper answerMapper;
    @Override
    public void deleteById(Integer id) {
        answerMapper.deleteById(id);
    }

    @Override
    public void insert(Answer record) {
        answerMapper.insert(record);
    }

    @Override
    public void insertSelective(Answer record) {
        answerMapper.insertSelective(record);
    }

    @Override
    public Answer selectById(Integer id) {
        return answerMapper.selectById(id);
    }

    @Override
    public void updateById(Answer record) {
        answerMapper.updateById(record);
    }

    @Override
    public List<Answer> selectByPageView(AnswerPageView pageView) {
        return null;
    }

    @Override
    public List<Answer> selectAllByQuestionId(Integer questionId) {
        return answerMapper.selectAllByQuestionId(questionId);
    }


}
