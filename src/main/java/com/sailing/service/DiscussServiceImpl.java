package com.sailing.service;

import com.sailing.dao.DiscussMapper;
import com.sailing.dao.support.DiscussPageView;
import com.sailing.entity.Discuss;
import com.sailing.entity.User;
import com.sailing.entity.model.DiscussUser;
import com.sailing.entity.model.DiscussUserWrap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class DiscussServiceImpl implements DiscussService {
	@Autowired
	DiscussMapper discussMapper;
    @Autowired
    UserService userService;

	@Override
	public int deleteById(Integer id) {
		return discussMapper.deleteById(id);
	}

	@Override
	public int insert(Discuss record) {
		return discussMapper.insert(record);
	}

	@Override
	public int insertSelective(Discuss record) {
		return discussMapper.insertSelective(record);
	}

	@Override
	public Discuss selectById(Integer id) {
		return discussMapper.selectById(id);
	}

	@Override
	public int updateByIdSelective(Discuss record) {
		return discussMapper.updateByIdSelective(record);
	}

	@Override
	public int updateById(Discuss record) {
		return discussMapper.updateById(record);
	}

	@Override
	public DiscussPageView selectPage(DiscussPageView pageView) {
		int rowCount = discussMapper.selectCountPageView(pageView);
		pageView.setRowCount(rowCount);
		if (pageView.getPageNow() < pageView.getPageCount()) {
			List<Discuss> discusses = discussMapper.selectByPage(pageView);
			pageView.setRecords(discusses);
		}
		return pageView;
	}

	@Override
	public List<Discuss> selectAllByVideoId(Integer videoId) {
		return discussMapper.selectAllByVideoId(videoId);
	}

    @Override
    public DiscussUserWrap selectDiscussUserByVideoId(Integer videoId) {
        List<Discuss> discusses=selectAllByVideoId(videoId);
        if(discusses==null&&discusses.size()==0)return null;
        Set<String> userIds=discusses.stream().map(Discuss::getUserId).collect(Collectors.toSet());
        List<User> users=userService.selectAllById(userIds);
        return new DiscussUserWrap(discusses,users);
    }

}
