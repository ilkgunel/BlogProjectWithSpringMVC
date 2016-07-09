<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<table align="right">
			<tr>
				<td>
					<c:if test="${pageContext.request.userPrincipal.name != null}">
								<p>Merhaba ${pageContext.request.userPrincipal.name}</p>
			 						    <br>
			  
			 					<c:url var="logoutAction" value="/j_spring_security_logout"></c:url>
			  
			 					<form action="${logoutAction}" method="post">
			     					<input type="submit" value="Çıkış İçin Tıklayın" />
			 					</form>
			 				</c:if>
				</td>
			</tr>
		</table>	

		<table border="1">
			<tr>
				<th>Makale Numarası:</th>
				<th>Makale Sahibi:</th>
				<th>Makale Başlığı:</th>
				<th>İçerik:</th>
			</tr>
			<c:forEach var="item" items="${articleList }">
				<tr>
					<td>
						${item.articleId}
					</td>
					<td>
						${item.authorName}
					</td>
					<td>
						${item.articleTitle}
					</td>
					<td>
						<a href="articleView.html?articleId=${item.articleId}">İçeriği İçin Tıklayın</a>
					</td>
				</tr>
			</c:forEach>	
		</table>
</body>
</html>