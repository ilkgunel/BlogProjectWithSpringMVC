package controllers;

import javax.validation.Valid;

import org.eclipse.persistence.exceptions.DatabaseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import entities.Member;
import service.MemberService;

@Controller
public class MemberRegisterController {
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private PostMemberController postMemberController;
	
	@ModelAttribute("member")
	 public Member getArticleObject() {
	  return new Member(); 
	 }
	
	@RequestMapping(value="/memberRegister", method = RequestMethod.GET)
    public String addMember( ) {
        return "memberRegister";
    }
	
	@RequestMapping(value = "/memberRegister",method = RequestMethod.POST)
    public ModelAndView addItem(@Valid @ModelAttribute("member") Member member,BindingResult result) {
		
     	String insertMessage = "";
     	ModelAndView modelAndView;
		
		if (result.hasErrors()) {
			System.out.println("\n\nResult Hataya Sahip!\n\n");
			modelAndView = new ModelAndView("memberRegister");
			return modelAndView;
		}		
		modelAndView = new ModelAndView("redirect:/postMember.html");
		
		try {
			insertMessage = memberService.insertNewUser(member);
		} catch (DatabaseException e) {
			System.out.println("An error occured while inserting new user!");
			System.out.println("Error is:"+e);
			insertMessage = "An error occured while inserting new user!\nError is:"+e.getInternalException();
		}	
		//modelAndView.addObject("message",insertMessage);
		System.out.println("\n\ninsermessage için buraya bak:"+insertMessage+"\n\n");
		postMemberController.setMessage(insertMessage);
     	return modelAndView;
        
    }
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handleAllException(Exception ex) {
		ModelAndView model = new ModelAndView("error/generic_error");
		if(ex.toString().contains("MySQLIntegrityConstraintViolationException: Duplicate entry")){
			model.addObject("errCode","Aynı E-posta hesabı ikinci kez kayıt olamaz!");
			model.addObject("errMsg", "this is Exception.class");
		}
		else {
			model.addObject("errCode",ex.getMessage());
			model.addObject("errMsg", ex.getMessage());
		}
		
		return model;

	}
}
