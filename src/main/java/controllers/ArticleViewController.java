package controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import entities.Article;
import service.ArticleService;

@Controller
public class ArticleViewController {
	
	@Autowired
	private ArticleService articleService;
	
	@RequestMapping(value = "/articleView",method = RequestMethod.GET)
	public String articleView(@RequestParam("articleId") String articleId, ModelMap map){
		List<Article> articles = articleService.getAllArticles();
		for(int i=0;i<articles.size();i++){
			if(articles.get(i).getArticleId() == Integer.parseInt(articleId)){
				map.addAttribute("article",articles.get(i));
			}
		}
		
		return "articleView";
	}
}
