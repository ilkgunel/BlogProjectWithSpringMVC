package controllers;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {
	@RequestMapping(method = RequestMethod.GET)
	public String login(ModelMap model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!authentication.getPrincipal().toString().equals("anonymousUser")) {
			return "redirect:/memberList.html";
		}
		else {
			return "login";
		}		
	}
}
