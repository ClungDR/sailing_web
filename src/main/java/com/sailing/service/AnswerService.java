package com.sailing.service;


import com.sailing.dao.support.AnswerPageView;
import com.sailing.entity.Answer;

import java.util.List;

public interface AnswerService {
    void deleteById(Integer id);

    void insert(Answer record);

    void insertSelective(Answer record);

    Answer selectById(Integer id);

    void updateById(Answer record);

    List<Answer> selectByPageView(AnswerPageView pageView);

    List<Answer> selectAllByQuestionId(Integer questionId);
}
