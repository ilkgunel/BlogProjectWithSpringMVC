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
