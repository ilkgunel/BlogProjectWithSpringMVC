package controllers;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import entitties.Article;
import service.ArticleService;
import validator.ArticleFormValidator;

@Controller
public class ArticleController {
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private ArticleFormValidator articleFormValidator;
	
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
		Locale locale = Locale.getDefault();
		String lang = locale.getDisplayLanguage();
		String country = locale.getDisplayCountry();
		System.out.println("Pişt buraya bak:"+locale+" "+lang+" "+country);
		return "articleAdd";
	}
	
	@RequestMapping(value="/postArticle",method=RequestMethod.POST)
	public String postArticle(@ModelAttribute("article") Article article,BindingResult result,ModelMap modelMap){
		articleFormValidator.validate(article, result);
		
		if (result.hasErrors()) {
			return "articleAdd";
		}
		
		String insertMessage = articleService.addArticle(article);
		modelMap.addAttribute("message",insertMessage);
		return "postArticle";
	}
}
