package webservice;

import javax.servlet.ServletContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.google.common.net.MediaType;

import entities.Member;
import service.MemberService;

@Path("/memberRegister")
public class MemberRegister {
	@Context
	private ServletContext servletContext;
	
	@Consumes(javax.ws.rs.core.MediaType.APPLICATION_JSON)
	@Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
	@POST
	public MemberRegisterPojo registerNewMember(Member member){
		System.out.print("MemberRegister WebService Çağırıldı!");
		MemberRegisterPojo memberRegisterPojo = new MemberRegisterPojo();
		ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(servletContext);
		MemberService memberService = context.getBean("memberService",MemberService.class);
		try {
			memberService.insertNewUser(member);
			memberRegisterPojo.setOperationResult("Kayıt Başarı İle Tamamlandı! Kaydolan Kişiye Ait Bilgiler");
			memberRegisterPojo.setMember(member);
		} catch (Exception e) {
			memberRegisterPojo.setOperationResult("Kayıt Denemesi Başarısız!");
		}
		
		return memberRegisterPojo;
	}
}
