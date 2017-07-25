package com.sailing.dao;

import com.sailing.entity.PPT;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PPTMapper {
    int deleteById(Integer id);

    int insert(PPT record);

    int insertSelective(PPT record);

    PPT selectById(Integer id);

    int updateByIdSelective(PPT record);

    int updateById(PPT record);

    List<PPT> selectByKeyWord(String keyword);
}