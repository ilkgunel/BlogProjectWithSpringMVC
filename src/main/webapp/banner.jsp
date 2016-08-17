<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Banner Page</title>
</head> 
<body>	
 	<div id="banner">
	    <table align="right">
				<tr>
					<td>
						<c:if test="${pageContext.request.userPrincipal.name != null}">
									<p>Merhaba ${pageContext.request.userPrincipal.name}</p>
				 						    <br>
				  
				 					<c:url var="logoutAction" value="/j_spring_security_logout"></c:url>
				  
				 					<form action="${logoutAction}" method="post">
				     					<input type="submit" value="ÃÄ±kÄ±Å Ä°Ã§in TÄ±klayÄ±n" />
				 					</form>
				 				</c:if>
					</td>
				</tr>
			</table>
			<h1>Spring MVC İle Basit Blog Projesi</h1>
	    	<p class="slogan">Basit Bir Proje</p>
	  </div>
</body>
</html>