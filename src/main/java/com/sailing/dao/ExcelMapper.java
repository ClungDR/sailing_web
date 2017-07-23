package com.sailing.dao;

import com.sailing.entity.Excel;
import org.springframework.stereotype.Repository;

@Repository
public interface ExcelMapper {
    int deleteById(Integer id);

    int insert(Excel record);

    int insertSelective(Excel record);

    Excel selectById(Integer id);

    int updateByIdSelective(Excel record);

    int updateById(Excel record);
}