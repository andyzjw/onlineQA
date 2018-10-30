package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Answer;
import com.dao.AnswerMapper;
import com.service.AnswerService;
@Service("answerService")
public class AnswerServiceImpl implements AnswerService {
	@Autowired
	private AnswerMapper mapper;

	@Override
	public int addAns(Answer a) {
		return mapper.addAns(a);
	}
	
	
}
