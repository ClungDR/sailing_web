package com.sailing.dao;

import com.sailing.dao.support.DiscussPageView;
import com.sailing.dao.support.PageView;
import com.sailing.entity.Discuss;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DiscussMapper {
    int deleteById(Integer id);

    int insert(Discuss record);

    int insertSelective(Discuss record);

    Discuss selectById(Integer id);

    int updateByIdSelective(Discuss record);

    int updateById(Discuss record);

    /**
     * 查询所有数据的总条数
     * @return
     */
    int selectCount();

    /**
     * 查询分页数据的总条数
     * @param pageView
     * @return
     */
    int selectCountPageView(DiscussPageView pageView);

    List<Discuss> selectByPage(DiscussPageView pageView);

    /**
     * 根据视频的id查询所有的讨论内容
     * @param videoId
     * @return
     */
    List<Discuss> selectAllByVideoId(Integer videoId);
}