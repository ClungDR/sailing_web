package com.sailing.service;


import com.sailing.dao.support.DiscussPageView;
import com.sailing.dao.support.PageView;
import com.sailing.entity.Discuss;
import com.sailing.entity.model.DiscussUser;
import com.sailing.entity.model.DiscussUserWrap;

import java.util.List;

public interface DiscussService {
    int deleteById(Integer id);

    int insert(Discuss record);

    int insertSelective(Discuss record);

    Discuss selectById(Integer id);

    int updateByIdSelective(Discuss record);

    int updateById(Discuss record);

    PageView selectPage(DiscussPageView pageView);

    /**
     * 根据视频的id查询所有的讨论内容
     * @param videoId
     * @return
     */
    List<Discuss> selectAllByVideoId(Integer videoId);

    DiscussUserWrap selectDiscussUserByVideoId(Integer videoId);


}
