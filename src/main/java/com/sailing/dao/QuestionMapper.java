package com.sailing.dao;

import com.sailing.entity.Question;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionMapper {
    int deleteById(Integer id);

    int insert(Question record);

    int insertSelective(Question record);

    Question selectById(Integer id);

    int updateByIdSelective(Question record);

    int updateById(Question record);

    List<Question> selectAllByVideoId(Integer videoId);
}