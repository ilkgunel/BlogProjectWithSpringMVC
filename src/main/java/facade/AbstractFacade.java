package facade;

import javax.persistence.EntityManager;

import org.springframework.transaction.annotation.Transactional;

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
		} catch (Exception e) {
			isOperationSuccessful = false;
		}
		return isOperationSuccessful;
	}
}
