package com.action;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Answer;
import com.bean.Question;
import com.service.AnswerService;
import com.service.QuestionService;

@Controller
@RequestMapping("answer")
public class AnswerAction {
	@Resource
	private AnswerService answerService;
	@Resource
	private QuestionService questionService;
	
	/**添加回答*/
	@RequestMapping("addAns")
	public String addAns(String answer,Long qid,HttpSession session) {
		System.out.println("添加回答");
		
		Answer a =new Answer(answer,new Date(),qid);
		int i =answerService.addAns(a);
		
		if(i==1) {
			//更新 question
			Question q = new Question(qid);
			q=questionService.query(q).get(0);
			q.setAnswerCount(q.getAnswerCount()+1);
			q.setLastModified(new Date());
			questionService.updateQuestion(q);
			
			session.setAttribute("addAnsMsg", "添加成功");
		}else {
			session.setAttribute("addAnsMsg", "添加失败");
		}
		
		return "/question/queryAll";
	}
	
}
