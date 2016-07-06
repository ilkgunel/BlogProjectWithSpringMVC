package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entitties.Member;
import facade.MemberFacade;

@Service
public class MemberService {
	@Autowired
	private MemberFacade memberFacade;
	
	public String insertNewUser(Member member) {
		String message="";
		boolean operationResult = memberFacade.create(member);
		if (operationResult) {
			message = "Üye Kaydı Başarı İle Yapıldı!";
		}
		else {
			message = "Üye Kaydı Sırasında Hata Meydana Geldi!";
		}
		return message;
	}
}
