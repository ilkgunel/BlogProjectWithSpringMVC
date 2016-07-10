package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entities.Userrole;
import facade.UserRoleFacade;

@Service
public class UserRoleService {
	@Autowired
	private UserRoleFacade userRoleFacade;
	
	public String addUserRole(Userrole userrole){
		String insertMessage = "";
		boolean insertionResult = userRoleFacade.create(userrole);
		if(insertionResult){
			insertMessage = "Data inserted Successfully!";
		}
		else {
			insertMessage = "An error occured while inserting the record!";
		}
		return insertMessage;
	}
}
