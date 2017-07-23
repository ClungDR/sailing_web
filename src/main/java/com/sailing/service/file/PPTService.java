package com.sailing.service.file;

import com.sailing.entity.PPT;

public interface PPTService {
    void deleteById(Integer id);

    void insert(PPT record);

    void insertSelective(PPT record);

    PPT selectById(Integer id);

    void updateByIdSelective(PPT record);

    void updateById(PPT record);
}
