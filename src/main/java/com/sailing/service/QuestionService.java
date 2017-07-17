 package com.sailing.service;


import java.util.List;

import com.sailing.entity.Answer;
import com.sailing.entity.Question;
import com.sailing.entity.model.QuestionWrap;
import com.sailing.entity.model.QuestionWrapUser;

 public interface QuestionService {
    void deleteById(Integer id);

    void insert(Question record);

    void insertSelective(Question record);

    Question selectById(Integer id);

    void updateById(Question record);

     List<Question> selectAllByVideoId(Integer videoId);

     QuestionWrapUser selectAllQuestionWrapByVideoId(Integer videoId);
}
