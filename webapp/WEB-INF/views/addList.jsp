<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="${pageContext.request.contextPath}/gbc/add" method="post">
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea cols = 60 rows=5 name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">등록</button></td>
			</tr>
		</table>
	</form>
	
	<c:forEach items="${gList}" var="gvo">  
		<table border="1">
			<tr>
				<td>${gvo.no}</td>
				<td>${gvo.name}</td>
				<td>${gvo.regDate}</td>
				<td><a href="${pageContext.request.contextPath}/gbc/delete?no=${gvo.no}">삭제</a></td>
			</tr> 
			<tr>
				<td colspan="4">${gvo.content}</td>
			</tr>
		</table>
	</c:forEach>
	
</body>
</html>