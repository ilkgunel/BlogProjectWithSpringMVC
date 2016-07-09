<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<table>
			<tr>
				<td><p align="right">Hoşgeldiniz ${name}</p></td>
			</tr>
			<tr>
				<td>
					<c:if test="${pageContext.request.userPrincipal.name != null}">
								<p>Hi ${pageContext.request.userPrincipal.name}</p>
			 						    <br>
			  
			 					<c:url var="logoutAction" value="/j_spring_security_logout"></c:url>
			  
			 					<form action="${logoutAction}" method="post">
			     					<input type="submit" value="Logout" />
			 					</form>
			 				</c:if>
				</td>
			</tr>
		</table>	

		<table border="1">
			<tr>
				<th>Adı:</th>
				<th>Soyadı</th>
				<th>Adres:</th>
				<th>Email Adres:</th>
				<th>Telefon No:</th>
				<th>Parola:</th>
				<th>Rol:</th>
			</tr>
			<c:forEach var="item" items="${memberList }">
				<tr>
					<td>
						${item.name}
					</td>
					<td>
						${item.surname}
					</td>
					<td>
						${item.address}
					</td>
					<td>
						${item.emailAddress}
					</td>
					<td>
						${item.telephoneNumber}
					</td>
					<td>
						${item.password}
					</td>
					<td>
						${item.role}
					</td>
				</tr>
			</c:forEach>	
		</table>
</body>
</html>