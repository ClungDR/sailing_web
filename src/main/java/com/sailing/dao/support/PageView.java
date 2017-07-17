package com.sailing.dao.support;

import java.util.List;

/**
 * //分页封装函数
 *
 * @param <?>
 */
public class PageView {
	/**
	 * 分页数据
	 */
	protected List<?> records;
	/**
	 * 每页显示几条记录
	 */
	protected int pageSize = 10;
	/**
	 * 默认 当前页 为第一页 这个数是计算出来的
	 */
	protected int pageNow = 0;
	/**
	 * 总页数 这个数是计算出来的
	 *
	 */
	protected int pageCount;
	/**
	 * 总记录数
	 */
	protected int rowCount;

	public PageView() {
	}

	/**
	 * 要获得记录的开始索引 即 开始页码
	 *
	 * @return
	 */
	public int getFirstResult() {
		return this.pageNow * this.pageSize;
	}

	/**
	 * 使用构造函数，，强制必需输入 每页显示数量 和 当前页
	 *
	 * @param pageSize
	 *            每页显示数量
	 * @param pageNow
	 *            当前页
	 */
	public PageView(int pageNow, int pageSize) {
		this.pageSize = pageSize;
		this.pageNow = pageNow;
	}

	/**
	 * 使用构造函数，，强制必需输入 当前页
	 *
	 * @param pageNow
	 *            当前页
	 */
	public PageView(int pageNow) {
		this.pageNow = pageNow;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
		setPageCount(this.rowCount % this.pageSize == 0
		        ? (this.rowCount / this.pageSize - 1)
		        : this.rowCount / this.pageSize);
	}

	public List<?> getRecords() {
		return records;
	}

	public void setRecords(List<?> records) {
		this.records = records;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageCount() {
		return pageCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	/**
	 * 读取偏移值
	 * 
	 * @return
	 */
	public int getOffset() {
		return pageNow * pageSize;
	}

	@Override
	public String toString() {
		return "PageView [ pageCount=" + pageCount + ", pageSize=" + pageSize
		        + ", pageNow=" + pageNow + ", rowCount=" + rowCount + "]";
	}

}
