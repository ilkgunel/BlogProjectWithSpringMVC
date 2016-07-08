package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PostMemberController {
	String message;
	
	@RequestMapping(value = "/postMember",method = RequestMethod.GET)
	public ModelAndView postMemberController(){
		ModelAndView modelAndView = new ModelAndView("postMember");		
		modelAndView.addObject("message",message);
		return modelAndView;
	}
	
	public String getMessage() {
		return message;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}
}
