package com.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Question;
import com.service.QuestionService;

@Controller
@RequestMapping("question")
public class QuestionAction {
	@Resource
	private QuestionService questionService;
	
	@RequestMapping("queryAll")
	public String queryAll(HttpSession session) {
		System.out.println("查询问题");
		
		List<Question> questions =questionService.queryALl();
		
		session.setAttribute("questions", questions);
		/*此处为转发，以便刷新当前页面的时候重新查询后台，转发后的地址后面为queryAll/questions*/
		return "/main.jsp";
	}
	/**添加*/
	@RequestMapping("addQuestion")
	public String addQuestion(String title,String description,HttpSession session) {
		System.out.println("添加问题");
		
		System.out.println("标题"+title);
		System.out.println("描述"+description);
		Question q = new Question(title,description,0,new Date());
		
		int i=questionService.addQuestion(q);
		
		if(i==1) {
			session.setAttribute("addMsg", "添加成功");
		}else {
			session.setAttribute("addMsg", "添加失败，请重新添加");
		}
		
		return "/question/queryAll";
	}
	
}
