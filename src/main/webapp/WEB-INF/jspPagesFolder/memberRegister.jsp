<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
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
    <script type="text/javascript" language="javascript">
    	$(document).ready(function(){
    		$("#birthDate").mask('00/00/0000');
    	});
    </script>
</head>
<body>

    
    <div id="container">
  <div id="banner">
    <h1>Your Site Name</h1>
    <p class="slogan">slogan here maybe ...</p>
  </div>
  <div id="navbar">
    <ul>
      <li><a href="index.jsp">Ana Sayfa</a></li>
      <li><a href="memberRegister.html">Üye Olmak İçin Tıklayın</a></li>
      <li><a href="memberList.html">Üye Listesi İçin Tıklayın</a></li>
      <li><a href="articleAdd.html">Makale Eklemek İçin Tıklayın</a></li>
      <li><a href="articleList.html">Makale Listesi İçin Tıklayın</a></li>
      <li><a href="about.html">Hakkımda</a></li>
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
        <h1>Yeni Üye Kaydı</h1>
        <form:form action="memberRegister.html" method="post" modelAttribute="member" commandName="member">
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
            	<td>Doğum Tarihiniz:</td>
            	<td> <form:input id="birthDate" path="birthDate"/></td>
            	<td> <form:errors path="birthDate" cssClass="text-danger"></form:errors> </td>
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
                <td>Telefon Numaranız:</td>
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
  <div class="clear">&nbsp;</div>
  <div id="footer"> <a href="#">Homepage</a> | <a href="#">contact</a> | <a href="http://validator.w3.org/check?uri=referer">html</a> | <a href="http://jigsaw.w3.org/css-validator">css</a> | &copy; 2007 Anyone | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> | This work is licensed under a <a rel="license" target="_blank" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 License</a> </div>
</div>
</body>
</html>