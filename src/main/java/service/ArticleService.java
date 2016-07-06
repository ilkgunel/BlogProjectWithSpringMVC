package service;

import java.util.List;

import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entitties.Article;
import facade.ArticleFacade;

@Service
public class ArticleService {
	@Autowired
	private ArticleFacade articleFacade;
	
	public List<Article> getAllArticles(){
		return articleFacade.getAllRecords("Article.findAll");
	}
	
	public String addArticle(Article article){
		String message="";
		boolean creationResult = articleFacade.create(article);
		if(creationResult){
			message = "Makale Başarı İle Eklendi!";
		}
		else {
			message="Makale Eklenmesi Sırasında Hata Meydana Geldi!";
		}
		return message;
	}
}
