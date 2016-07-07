package controllers;

import javax.servlet.http.HttpServletRequest;

import org.eclipse.persistence.exceptions.DatabaseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import entitties.Member;
import service.MemberService;

@Controller
public class MemberRegisterController {
	@Autowired
	private MemberService memberService;
	
	@ModelAttribute("member")
	 public Member getArticleObject() {
	  return new Member(); 
	 }
	
	@RequestMapping(value="memberRegister", method = RequestMethod.GET)
    public String addMember( ) {
        return "memberRegister";
    }
	
	@RequestMapping(value = "/postMember",method = RequestMethod.POST)
    public String addItem(@ModelAttribute("member") Member member,BindingResult result,ModelMap modelMap) {
		String insertMessage = "";
		try {
			insertMessage = memberService.insertNewUser(member);			
		} catch (DatabaseException e) {
			System.out.println("An error occured while inserting new user!");
			System.out.println("Error is:"+e);
			insertMessage = "An error occured while inserting new user!\nError is:"+e.getInternalException();
		}
	    
	    modelMap.addAttribute("message",insertMessage);
        return "postMember";
    }
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handleAllException(Exception ex) {
		ModelAndView model = new ModelAndView("error/generic_error");
		if(ex.toString().contains("MySQLIntegrityConstraintViolationException: Duplicate entry")){
			model.addObject("errCode","Aynı E-posta hesabı ikinci kez kayıt olamaz!");
			model.addObject("errMsg", "this is Exception.class");
		}
		
		return model;

	}
}
