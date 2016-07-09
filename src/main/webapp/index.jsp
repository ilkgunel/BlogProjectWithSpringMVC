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
    <h3>Main Content</h3>
    <blockquote>The page has been tested in Mozilla and IE7. This page validates as XHTML 1.0 Transitional using valid CSS. Top image from www.sxc.hu. For more FREE templates visit my website.</blockquote>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec non ante. Phasellus lacinia eleifend purus. Nulla non leo in ante ornare iaculis. Donec aliquam euismod arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Nam blandit dapibus purus. Quisque consequat nibh luctus ligula. Aliquam lobortis venenatis nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Duis pretium euismod elit. Nam velit. Nulla diam massa, interdum non, hendrerit at, blandit nec, turpis. Integer consequat. Vestibulum sem neque, laoreet non, facilisis pretium, ultrices non, mauris. Nunc ante lorem, venenatis sed, vulputate molestie, aliquam eget, enim. Aliquam vulputate porta felis. Nunc sagittis magna in mauris. Pellentesque pellentesque. </p>
    <p>Proin id dolor. Integer iaculis neque sed arcu congue imperdiet. Etiam nulla est, mattis quis, feugiat vel, venenatis vel, lorem. Aenean pulvinar lectus quis metus. Aenean velit. Proin lacinia, tortor quis congue pharetra, magna ligula congue turpis, eget porta nulla leo nec urna. Morbi ipsum.</p>
    <p class="post"> <a href="#" class="readmore">Read more</a> <a href="#" class="comments">Comments (7)</a> <span class="date">Feb 23, 2007</span> </p>
    <h3>Recent Articles</h3>
    <p>Morbi ullamcorper porta ante. Nam sit amet nibh id mi semper varius. Etiam tincidunt, arcu elementum dapibus posuere, justo leo tincidunt justo, vitae gravida pede augue non enim. Pellentesque faucibus magna euismod orci. Proin id dolor. Integer iaculis neque sed arcu congue imperdiet. Etiam nulla est, mattis quis, feugiat vel, venenatis vel, lorem. Aenean pulvinar lectus quis metus. Aenean velit. Proin lacinia, tortor quis congue pharetra, magna ligula congue turpis, eget porta nulla leo nec urna. Morbi ipsum.</p>
    <p class="post"> <a href="#" class="readmore">Read more</a> <a href="#" class="comments">Comments (7)</a> <span class="date">Feb 23, 2007</span> </p>
  </div>
  <div class="clear">&nbsp;</div>
  <div id="footer"> <a href="#">Homepage</a> | <a href="#">contact</a> | <a href="http://validator.w3.org/check?uri=referer">html</a> | <a href="http://jigsaw.w3.org/css-validator">css</a> | &copy; 2007 Anyone | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> | This work is licensed under a <a rel="license" target="_blank" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 License</a> </div>
</div>
</body>
</html>