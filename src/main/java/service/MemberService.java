package service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.List;

import org.eclipse.persistence.exceptions.DatabaseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entities.Member;
import entities.Userrole;
import facade.MemberFacade;
import facade.UserRoleFacade;

@Service
public class MemberService {
	@Autowired
	private MemberFacade memberFacade;
	
	@Autowired 
	private UserRoleFacade userRoleFacade;
		
	String errorMessage = "";
	
	public String insertNewUser(Member member) {
		String message="";
		try {
			String rawPassword = member.getPassword();
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			messageDigest.update(rawPassword.getBytes());
			byte[] messageDigestArray = messageDigest.digest();
			StringBuffer encodedPassword = new StringBuffer();
			for (int i = 0; i < messageDigestArray.length; i++) {
				encodedPassword.append(Integer.toString((messageDigestArray[i]&0xff)+0x100,16).substring(1));
			}
			member.setPassword(encodedPassword.toString());
			
		} catch (NoSuchAlgorithmException e) {
			System.out.println("Ham parolanın hashlenmesi sırasında hata meydana geldi!");
			System.out.println("Hata:"+e);
		}
		
		boolean memberOperationResult = false;
		boolean userRoleOperationResult= false;
		
		member.setRole("ROLE_USER");
		member.setEnabled(true);
		
		try {
			memberOperationResult = memberFacade.create(member);
			 Userrole userrole = new Userrole();
			 userrole.setRole(member.getRole());
			 userrole.setEmailAddress(member.getEmailAddress());
			 userRoleOperationResult = userRoleFacade.create(userrole);
		} catch (DatabaseException e) {
			System.out.println("An error occured while inserting new user!");
			System.out.println("Error is:"+e);
			if(e.getInternalException().toString() == "com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException"){
				errorMessage = "Hal-i hazırda kayıtlı e-posta adresi ile kayıt olamazsınız!";
			}
			System.out.println("\n\nHata mesajı burada:"+errorMessage+"\n\n");
		}
		if (memberOperationResult && userRoleOperationResult) {
			message = "Üye Kaydı Başarı İle Yapıldı!";
		}
		else {
			message = "Üye Kaydı Sırasında Hata Meydana Geldi!"+errorMessage;
		}
		return message;
	}
	
	public List<Member> getMemberList(){
		return memberFacade.getAllRecords("Member.findAll");
	}
}
