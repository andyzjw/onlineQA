<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>详细内容</title>
<link href="${pageContext.request.contextPath}/css/questionDetail.css" rel="stylesheet" type="text/css" >
<script type="text/javascript"></script>
</head>
<body>
	<div class="questionDetail">
		<div class="detailContent">
		<form action="${pageContext.request.contextPath}/answer/addAns" method="post">
		<table>
				<tr>
					<td>问题：</td>
					<td>
					<!-- 此处questions为页面进来时设置的，有“延迟效应”，建议单独到后台查询,逆序输出 -->
				<%-- 查询长度${fn:length(questions)} --%>
					${questions[fn:length(questions)-param.id].title}
						<input type="hidden" name="qid" value="${param.id}"/>
					</td>
				</tr>
				<tr>
					<td>问题描述：</td>
					<td>
					${param.id }
					${questions[param.id-1].detailDesc}
					</td>
				</tr>
				<c:forEach var="a" items="${questions[param.id-1].aList}" varStatus="i">
				<tr>
					<td>
					<c:if test="${i.index==0}">
						网友回答
					</c:if>
					</td>
					<td>
						<fmt:formatDate value="${a.ansDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
						<br>
						${a.ansContent}
					</td>
				</tr>
				</c:forEach>
				<tr>
					<td>我来回答：</td>
					<td style="background:white">
						<textarea rows="5" cols="40" name="answer"></textarea>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="submit" value="提交答案"/>
						<a href="${pageContext.request.contextPath}/question/queryAll">返回首页</a>
					</td>
				</tr>
			</table>
		</form>
		</div>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">

</script>

</html>