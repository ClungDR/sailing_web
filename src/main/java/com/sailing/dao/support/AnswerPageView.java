package com.sailing.dao.support;

import org.quartz.listeners.FilterAndBroadcastJobListener;
import org.springframework.core.annotation.Order;

/**
 * 针对回答的分页查询
 *
 *
 */
public class AnswerPageView extends PageView {
	public static final boolean ORDER_BY_HIT = true;
	public static final boolean ORDER_BY_TIME = false;

	private Integer questionId;

	private boolean orderBy = ORDER_BY_HIT;

	public AnswerPageView() {
		super(0, 5);
	}

	public AnswerPageView(Integer questionId) {
		super(0, 5);
		this.questionId = questionId;
	}

	public boolean isOrderBy() {
		return orderBy;
	}

	public void setOrderBy(boolean orderBy) {
		this.orderBy = orderBy;
	}

	public Integer getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
	}

	@Override
	public String toString() {
		return "AnswerPageView{" + "records=" + records + ", pageSize="
		        + pageSize + ", pageNow=" + pageNow + ", pageCount=" + pageCount
		        + ", questionId=" + questionId + ", orderBy=" + orderBy
		        + ", rowCount=" + rowCount + '}';
	}
}
