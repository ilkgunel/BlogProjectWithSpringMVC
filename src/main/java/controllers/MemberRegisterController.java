package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import entitties.Member;
import service.MemberService;

@Controller
public class MemberRegisterController {
	@Autowired
	private MemberService memberService;
	
	@ModelAttribute("member")
	 public Member getGreetingObject() {
	  return new Member(); 
	 }
	
	@RequestMapping(value="memberRegister", method = RequestMethod.GET)
    public String addMember( ) {
        return "memberRegister";
    }
	
	@RequestMapping(value = "/postMember",method = RequestMethod.POST)
    public String addItem(@ModelAttribute("member") Member member,BindingResult result,ModelMap modelMap) {
	    String insertMessage = memberService.insertNewUser(member);
	    modelMap.addAttribute("message",insertMessage);
        return "postMember";
    }
}
