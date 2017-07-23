package com.sailing.service.file;

import com.sailing.entity.Excel;

public interface ExcelService {
    void deleteById(Integer id);

    void insert(Excel record);

    void insertSelective(Excel record);

    Excel selectById(Integer id);

    void updateByIdSelective(Excel record);

    void updateById(Excel record);
}
