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
		<jsp:include page="banner.jsp"></jsp:include>
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
    <h3>Bu Proje Hakkında</h3>
    <blockquote>Bu basit proje benim Spring MVC öğrenmek amacı ile sıfır Spring MVC bilgisi ile giriştiğim bir projedir.</blockquote>
    <p>Daha önce MVC framework'ü olarak JSF ve JSF ile nesne yönetimi için bir tanesinde Spring, bir tanesinde de EJB kullandığım iki
   	   adet basit blog projesi yapmıştım.O projelerin kaynak kodları da github hesabımda yer almaktadır. 
   	   Spring MVC öğrenmeye niyetli olduğum için bir projeye girişerek Spring MVC bilgisi edinmek istedim ve bu projeyi yazdım.
   	   Bu projeyi kodlarken şu frameworkleri kullandım:</p>
    <ul>
    	<li>JSP</li>
    	<li>Spring MVC</li>
    	<li>Spring Security</li>
    	<li>Spring Data (JPA İçin)</li>
    	<li>JPA (Sağlayıcı Olarak Eclipselink)</li>
    	<li>MySQL</li>
    </ul>
    <p>Ayrıca projeyi hazırlarken Bootstrap CSS'den faydalandım ve  <a href="http://www.free-css.com/free-css-templates/page13/lime-green">http://www.free-css.com/free-css-templates/page13/lime-green</a>
    	adresindeki ücretsiz CSS şablonunu kullandım. JSP içindeki masklama işlemi için <a href="https://igorescobar.github.io/jQuery-Mask-Plugin/">https://igorescobar.github.io/jQuery-Mask-Plugin/</a>
    	adresindeki kütüphaneden faydalandım.
    </p>   
    <p>Bu projenin kaynak kodları faydalanmak isteyen herkese açıktır. <a href="https://github.com/ilkgunel/BlogProjectWithSpringMVC">https://github.com/ilkgunel/BlogProjectWithSpringMVC</a> adresinden edinebilirsiniz.</p>
    <p>Benim hakkımda bilgi edinmek ya da benimle iletişime geçmek isterseniz <a href="about.jsp">Hakkımda</a></p> sayfasını kullanabilirsiniz.
    
  </div>
  <div class="clear">&nbsp;</div>
  <div id="footer"> <a href="index.jsp">Ana Sayfa</a> | <a href="about.jsp">İletişime Geç</a> | <a href="http://validator.w3.org/check?uri=referer">html</a> | <a href="http://jigsaw.w3.org/css-validator">css</a> | &copy; 2007 Anyone | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> | This work is licensed under a <a rel="license" target="_blank" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 License</a> </div>
</div>
</body>
</html>
