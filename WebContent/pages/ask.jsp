<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="${pageContext.request.contextPath}/css/ask.css" rel="stylesheet" type="text/css" >
<script type="text/javascript"></script>
</head>
<body>
	<div class="ask">
		<div class="questionTitle">我要提问</div>
		<div class="back"><a href="${pageContext.request.contextPath}/question/queryAll">返回首页</a></div>
		<div class="questionContent">
			<form action="${pageContext.request.contextPath}/question/addQuestion" method="post">
				<table>
				<tr>
					<td>问题：</td>
					<td>
						<input name="title" />
					</td>
				</tr>
				<tr>
					<td>问题描述：</td>
					<td>
						<textarea rows="5" cols="10" name="description"></textarea>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="submit" value="保存问题"/>
					</td>
				</tr>
				</table>
			</form>
			
		</div>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
/* 	$('[type="button"]').click(function(){
		console.log($('[name="title"]').val());
		location="${pageContext.request.contextPath}/question/addQuestion?title="
				+$('[name="title"]').val()+"&description="+$('[name="description"]').val();
	})

 alert("${addMsg}"+1) */
 </script>
</html>