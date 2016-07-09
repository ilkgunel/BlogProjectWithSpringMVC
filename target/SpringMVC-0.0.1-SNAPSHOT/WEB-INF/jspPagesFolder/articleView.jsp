<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="container">
  <div id="banner">
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
			<h1>Spring MVC İle Basit Blog Projesi</h1>
	    	<p class="slogan">Basit Bir Proje</p>
	  </div>
  <div id="navbar">
    <ul>
      <li><a href="index.jsp">Ana Sayfa</a></li>
      <li><a href="memberRegister.html">Üye Olmak İçin Tıklayın</a></li>
      <li><a href="memberList.html">Üye Listesi İçin Tıklayın</a></li>
      <li><a href="articleAdd.html">Makale Eklemek İçin Tıklayın</a></li>
      <li><a href="articleList.html">Makale Listesi İçin Tıklayın</a></li>
      <li><a href="about.jsp">Hakkımda</a></li>
    </ul>
  </div>
  <div class="clear">&nbsp;</div>
  <div id="sidebar">
    <h2>Sub Menu</h2>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Products</a></li>
      <li><a href="#" class="selected">What we do</a></li>
      <li><a href="#">Contact us</a></li>
      <li><a href="#">Privacy Policy</a></li>
      <li><a href="#">Links</a></li>
    </ul>
    <h2>Archives</h2>
    <ul>
      <li><a href="#">January</a></li>
      <li><a href="#">February</a></li>
      <li><a href="#">March</a></li>
      <li><a href="#">April</a></li>
    </ul>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec non ante. Phasellus lacinia eleifend purus. Nulla non leo in ante ornare iaculis. Donec aliquam euismod arcu.</p>
  </div>
  <div id="content">
    <p align="right"> Makale No:${article.articleId} - Makale Sahibi ${article.authorName} </p>
		
		<table>
			<tr>
				<td><h3>${article.articleTitle}</h3></td>
			</tr>
			<tr>
				<td><p>${article.articleContent}</p></td>
			</tr>
		</table>
  </div>
  <div class="clear">&nbsp;</div>
  <div id="footer"> <a href="index.jsp">Ana Sayfa</a> | <a href="about.jsp">İletişime Geç</a> | <a href="http://validator.w3.org/check?uri=referer">html</a> | <a href="http://jigsaw.w3.org/css-validator">css</a> | &copy; 2007 Anyone | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> | This work is licensed under a <a rel="license" target="_blank" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 License</a> </div>
</div>
</body>
</html>