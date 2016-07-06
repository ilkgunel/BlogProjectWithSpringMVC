package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import facade.MemberFacade;
import service.MemberService;

@Controller
public class MemberListController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/memberList",method = RequestMethod.GET)
	public String memberList(ModelMap modelMap){
		modelMap.addAttribute("memberList", memberService.getMemberList());
		return "memberList";
	}
}
