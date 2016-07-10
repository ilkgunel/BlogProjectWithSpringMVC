package facade;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import entities.Userrole;

@Component
public class UserRoleFacade extends AbstractFacade<Userrole>{
	@PersistenceContext
	private EntityManager em;
	
	protected EntityManager getEntityManager(){
		return em;
	}
	
	public UserRoleFacade(){
		super(Userrole.class);
	}
}
