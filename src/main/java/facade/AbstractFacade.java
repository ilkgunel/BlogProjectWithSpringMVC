package facade;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.RollbackException;

import org.springframework.transaction.annotation.Transactional;

import entities.Member;

public abstract class AbstractFacade<T> {
	private Class<T> entityClass;
	
	public AbstractFacade(Class<T> entityClass){
		this.entityClass = entityClass;
	}
	
	protected abstract EntityManager getEntityManager();
	
	@Transactional
	public boolean create(T entity){
		boolean isOperationSuccessful = false;
		try {
			getEntityManager().persist(entity);
			isOperationSuccessful =true;
		} catch (RollbackException e) {
			isOperationSuccessful = false;
		}
		return isOperationSuccessful;
	}
	
	@Transactional
	public List<T> getAllRecords(String namedQuery){
		Query query = getEntityManager().createNamedQuery(namedQuery);
		return query.getResultList();
	}
}
