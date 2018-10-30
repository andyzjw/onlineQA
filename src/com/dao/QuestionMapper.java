package com.dao;

import java.util.List;

import com.bean.Question;

public interface QuestionMapper {
	/**查询问题*/
	public List<Question> queryAll();
	/**添加问题*/
	public int addQuestion(Question q);
	/**修改次数*/
	public int updateQuestion(Question q);
	/**查询*/
	public List<Question> query(Question q);
}
