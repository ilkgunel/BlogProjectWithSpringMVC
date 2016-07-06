package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/helloWorld")
public class HelloWorldController {

		@RequestMapping(method = RequestMethod.GET)
		public String hello(ModelMap model) {

			model.addAttribute("name", "İlkay Günel");
			return "helloWorld";

		}
		
	}