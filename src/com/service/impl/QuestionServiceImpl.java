package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Question;
import com.dao.QuestionMapper;
import com.service.QuestionService;
@Service("questionService")
public class QuestionServiceImpl implements QuestionService {
	@Autowired
	private QuestionMapper mapper;
	/** 查询*/
	@Override
	public List<Question> queryALl() {
		return mapper.queryAll();
	}
	/** 添加 */
	@Override
	public int addQuestion(Question q) {
		return mapper.addQuestion(q);
	}
	@Override
	public int updateQuestion(Question q) {
		return mapper.updateQuestion(q);
	}
	@Override
	public List<Question> query(Question q) {
		return mapper.query(q);
	}
	
	
}
