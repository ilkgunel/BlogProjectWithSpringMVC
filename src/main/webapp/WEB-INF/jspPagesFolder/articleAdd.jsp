<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center><h4>Makale Bilgilerinizi Doldurunuz</h4></center>
	<form:form action="articleAdd.html" modelAttribute="article" method="POST">
		<table>
			<form:hidden path="articleId"/>
			<tr>
				<td>Makale Başlığı:</td>
				<td>
					<form:input id="articleTitle" path="articleTitle"/> 
					<form:errors path="articleTitle" cssClass="text-danger"/> 
				</td>
			</tr>
			<tr>
				<td>Makale İçeriği</td>
				<td>
					<form:textarea path="articleContent" rows="5" cols="30"/>
					<form:errors path="articleContent" cssClass="text-danger"/> 
				</td>
			</tr>
			<tr>
                <td colspan="2" align="center"><input type="submit" value="Kaydet"></td>
            </tr>
		</table>
	</form:form>
</body>
</html>