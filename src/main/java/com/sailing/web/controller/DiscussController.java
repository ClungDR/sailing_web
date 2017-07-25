package com.sailing.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sailing.constant.UserConstants;
import com.sailing.entity.Discuss;
import com.sailing.entity.User;
import com.sailing.entity.model.DiscussUser;
import com.sailing.entity.model.DiscussUserWrap;
import com.sailing.service.DiscussService;
import com.sailing.service.UserService;

@RequestMapping("/discuss")
@Controller
public class DiscussController extends BaseController {
	@Autowired
	DiscussService discussService;
	@Autowired
	UserService userService;

	/**
	 * 添加讨论
	 *
	 * @param content
	 *            讨论内容
	 * @param videoId
	 *            视频id
	 * @return
	 */
	@RequestMapping("/addDiscuss")
	@ResponseBody
	public DiscussUser addDiscuss(String content, int videoId, String userId) {
		User user = null;
		if (!StringUtils.isEmpty(userId)) {
			user = userService.selectById(userId);
		} else
			user = (User) session.getAttribute(UserConstants.CURRENT_USER);
		Discuss discuss = new Discuss(content, videoId);
		discuss.setUserId(user.getId());
		discussService.insert(discuss);
		DiscussUser discussWrap = new DiscussUser(
		        discussService.selectById(discuss.getId()),
		        (User) session.getAttribute(UserConstants.CURRENT_USER));
		return discussWrap;
	}

	@RequestMapping("/discussUserWrap")
	@ResponseBody
	public DiscussUserWrap getDiscussUserWrap(Integer videoId) {
		DiscussUserWrap duw = discussService
		        .selectDiscussUserByVideoId(videoId);
		if (duw == null)
			return null;
		return duw;
	}
}
