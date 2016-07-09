<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
						<p align="right">Merhaba ${pageContext.request.userPrincipal.name}</p>
	 						    
	 					<c:url var="logoutAction" value="/j_spring_security_logout"></c:url>
	  
	 					<form style="float: right;"  action="${logoutAction}" method="post">
	     					<input align="right" type="submit" value="Çıkış İçin Tıklayın" />
	 					</form>
	 		</c:if>
	 		
	 		<br/>
			
			<p align="right">
				Makale No:${article.articleId} - Makale Sahibi ${article.authorName}
			</p>
		
	<table>
			<tr>
				<td><h3>${article.articleTitle}</h3></td>
			</tr>
			<tr>
				<td><p>${article.articleContent}</p></td>
			</tr>
		</table>
</body>
</html>