package com.service;

import java.util.List;

import com.bean.Question;

public interface QuestionService {
	/**查询问题*/
	public List<Question> queryALl();
	/**查询*/
	public List<Question> query(Question q);
	/**添加*/
	public int addQuestion(Question q);
	/**修改*/
	public int updateQuestion(Question q);
}
