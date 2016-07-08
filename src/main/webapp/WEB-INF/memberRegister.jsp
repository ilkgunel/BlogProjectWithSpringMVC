<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<title>Yeni Üye Kaydı</title>
<script language="JavaScript" type="text/javascript" src="<c:url value="/resources/js/jquery-3.0.0.min.js" />"></script>
<script language="JavaScript" type="text/javascript" src="<c:url value="/resources/js/jquery.mask.min.js" />"></script>
<script language="JavaScript" type="text/javascript" src="<c:url value="/resources/js/passwordEqualityCheck.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <script type="text/javascript" language="javascript">
    $(document).ready(function(){
    	  $("#telephoneNumber").mask('0000-000-00-00');
    });
    </script>
</head>
<body>
<div align="center">
        <h1>Yeni Üye Kaydı</h1>
        <form:form action="memberRegister" method="post" modelAttribute="member" commandName="member">
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
                <td><form:errors path="emailAddress" cssClass="text-danger"></form:errors> </td>
            </tr>
            <tr>
                <td>Adresiniz:</td>
                <td><form:input path="address" /></td>
            </tr>
            <tr>
                <td>Parolanız:</td>
                <td><form:input id="password" path="password" /></td>
            </tr>
            <tr>
                <td>Parolanızı Tekrar Girin:</td>
                <td>
                	<input id="passwordAgain" onblur="sameness('password','passwordAgain','Parolalar')" type="text">
                </td>
            </tr>
            <tr>
                <td>Telefon Numaranız:(0212-212-11-22 Şablonuna Göre Giriniz)</td>
                <td><form:input id="telephoneNumber" path="telephoneNumber" /></td>
            </tr>
            <tr>
            	<td><p style="float:left;width:206px;margin-left:20px;font-family:Arial;font-size:14px;color:red;font-weight:bold;" id="warning_text"></p></td>
            	<td></td>
            </tr>          
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Kaydet"></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>