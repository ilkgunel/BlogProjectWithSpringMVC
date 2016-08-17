package webservice;

import java.util.List;

import javax.servlet.ServletContext;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import entities.Member;
import service.MemberService;

@Path("/memberList")
public class GetMemberList {
	
	@Produces("application/json")
	@GET
	public List<Member> memberList(@Context ServletContext servletContext){
		ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(servletContext);
		MemberService memberService = context.getBean("memberService",MemberService.class);
		return memberService.getMemberList();
	}
}
