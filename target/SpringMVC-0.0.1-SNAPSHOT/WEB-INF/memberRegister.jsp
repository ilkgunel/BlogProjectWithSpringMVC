<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Yeni Üye Kaydı</title>
</head>
<body>
<div align="center">
        <h1>Yeni Üye Kaydı</h1>
        <form:form action="postMember" method="post" modelAttribute="member">
        <table> 
            <tr>
                <td>Adınız:</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Soyadınız:</td>
                <td><form:input path="surname" /></td>
            </tr>
            <tr>
                <td>Email Adresiniz:</td>
                <td><form:input path="emailAddress" /></td>
            </tr>
            <tr>
                <td>Adresiniz:</td>
                <td><form:input path="address" /></td>
            </tr>
            <tr>
                <td>Telefon Numaranız:</td>
                <td><form:input path="telephoneNumber" /></td>
            </tr>
            <tr>
                <td>Parolanız:</td>
                <td><form:input path="password" /></td>
            </tr>
            <tr>
                <td>Parolanızı Tekrar Girin:</td>
                <td>
                	<input type="text">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Kaydet"></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>