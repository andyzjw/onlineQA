<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" >
<script type="text/javascript"></script>
</head>
<body>
	<div class="main">
		<div class="mainTitle">在线问答</div>
		<div class="mainAns"><a href="${pageContext.request.contextPath}/pages/ask.jsp">我要提问</a></div>
		<div class="mainContent">
			<table>
				<tr bgcolor="lightblue">
					<th>序号</th>
					<th>问题</th>
					<th>回答次数</th>
					<th>最后修改</th>
				</tr>

				<c:forEach var="q" items="${questions}" varStatus="i">
					<tr bgcolor="${i.index%2==0?'white':'lightgreen'}">
						<td>${q.id }</td>
						<td><a href="${pageContext.request.contextPath}/pages/questionDetail.jsp?id=${q.id}"
						<c:if test="${q.answerCount==0}">
							style="color:red"
							</c:if>	
						>${q.title }</a></td>
						<td>${q.answerCount }</td>
						<td><fmt:formatDate value="${q.lastModified}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					</tr>
				</c:forEach>

			</table>
		</div>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
/* 添加的信息 */
	if(""!="${addMsg}"){
		alert("${addMsg}");
		alert("${addMsg}");
		<c:remove var="addMsg" scope="session"/>
	}
	
	if("${addAns}"){
		alert("${addAns}");
		<c:remove var="addAns" scope="session"/>
	}
</script>
</html>