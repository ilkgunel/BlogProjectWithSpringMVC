<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
</head>
<body>
    <h3>E-posta Adresiniz Ve Parolanız İle Giriş Yapınız</h3>
    <c:url var="loginUrl" value="/j_spring_security_check"></c:url>
    <form action="${loginUrl}" method="POST">
        <table>
            <tr>
                <td>E-posta Adresiniz:</td>
                <td><input type='text' name='j_username' /></td>
            </tr>
            <tr>
                <td>Parolanız:</td>
                <td><input type='password' name='j_password' /></td>
            </tr>
            <tr>
                <td colspan='2'><input name="submit" type="submit"
                    value="Giriş Yap" /></td>
            </tr>
            <tr>
            	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </tr>            
        </table>
        <table>
        	<tr>
            	<td>
            	<c:if test="${not empty sessionScope.SPRING_SECURITY_LAST_EXCEPTION}">
					<div class="text-danger">
					    Your login attempt was not successful, try again.<br />
					    Reason: ${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}"
					</div>
				</c:if>
				</td>
            </tr>
        </table>
    </form>
</body>
</html>