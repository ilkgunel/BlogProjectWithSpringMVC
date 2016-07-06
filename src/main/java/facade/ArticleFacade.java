package facade;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import entitties.Article;

@Component
public class ArticleFacade extends AbstractFacade<Article>{
	@PersistenceContext
	private EntityManager em;
	
	@Override
	protected EntityManager getEntityManager(){
		return em;
	}
	
	public ArticleFacade(){
		super(Article.class);
	}
}
