package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import entities.Article;
import service.ArticleService;
import validator.ArticleFormValidator;

@Controller
public class ArticleController {
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private ArticleFormValidator articleFormValidator;
	
	@Autowired
	private PostArticleController postArticleController;
	
	@ModelAttribute("article")
	public Article getArticleObject(){
		return new Article();
	}
	
	@RequestMapping(value="/articleList",method=RequestMethod.GET)
	public String getArticleList(ModelMap modelMap) {
		modelMap.addAttribute("articleList",articleService.getAllArticles());
		return "/articleList";
	}
	
	@RequestMapping(value="/articleAdd",method=RequestMethod.GET)
	public String addArticle(){
		return "articleAdd";
	}
	
	@RequestMapping(value="/articleAdd",method=RequestMethod.POST)
	public String postArticle(@ModelAttribute("article") Article article,BindingResult result){
		articleFormValidator.validate(article, result);
		
		if (result.hasErrors()) {
			return "articleAdd";
		}
		
		String insertMessage = articleService.addArticle(article);
		postArticleController.setPostArticleMessage(insertMessage);
		return "redirect:/postArticle.html";
	}
	
//	@ExceptionHandler(Exception.class)
//	public ModelAndView handleAllException(Exception ex) {
//		ModelAndView model = new ModelAndView("error/generic_error");
//		if(ex.toString().contains("MySQLIntegrityConstraintViolationException: Duplicate entry")){
//			model.addObject("errCode","Aynı E-posta hesabı ikinci kez kayıt olamaz!");
//			model.addObject("errMsg", "this is Exception.class");
//		}
//		
//		return model;
//
//	}
}
