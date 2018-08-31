package com.mvc.util;

import java.util.List;

/**
 * 基础分页封装类
 * 
 * @author miaojian_li 2018年8月31日
 * @param <T>
 */
public class BaseList<T> {

	private long total;
	private List<T> records;
	
	public BaseList(){
		
	}

	public BaseList(long total, List<T> records) {
		this.total = total;
		this.records = records;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public List<T> getRecords() {
		return records;
	}

	public void setRecords(List<T> records) {
		this.records = records;
	}
}
