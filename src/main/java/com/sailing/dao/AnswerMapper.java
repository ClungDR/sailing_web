package com.sailing.dao;

import com.sailing.entity.Answer;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnswerMapper {
    int deleteById(Integer id);

    int insert(Answer record);

    int insertSelective(Answer record);

    Answer selectById(Integer id);

    int updateByIdSelective(Answer record);

    int updateById(Answer record);

    List<Answer> selectAllByQuestionId(Integer questionId);
}