package sampleTest;

import static com.jayway.restassured.RestAssured.given;

import org.junit.Test;

import com.jayway.restassured.response.Response;
import com.jayway.restassured.RestAssured;
import com.jayway.restassured.authentication.FormAuthConfig;

import java.io.FileNotFoundException;
import java.io.FileReader;

import sampleTest.MemberRegisterRequest;

import com.google.gson.Gson;

import org.apache.log4j.Logger;

public class WebServiceTest {
	
	protected Logger log = Logger.getLogger(getClass());
	
	@Test
	public void memberRegisterTest(){
		RestAssured.baseURI="http://localhost:8080/BlogProjectWithSpringMVC";
		
		MemberRegisterRequest memberRegisterRequest = memberRegisterRequestFromJson();
		String json = memberRegisterRequestToJson(memberRegisterRequest);
		
		System.out.println("Body:"+json);
		
		Response response = given()
		.auth().form("ilkay.gunel@kod5.org", "12345",new FormAuthConfig("/BlogProjectWithSpringMVC/j_spring_security_check", "j_username", "j_password"))
        .contentType("application/json")
        .body(json)
        .when()
        .post("/webservice/memberRegister")
        .then()
        .statusCode(200)
        .extract().response();
		
		System.out.println(response.getBody().prettyPrint());
	}
	
	private static MemberRegisterRequest memberRegisterRequestFromJson() {
		try {
			Gson gson = new Gson();
			FileReader reader;
			reader = new FileReader("src/test/resources/requests/memberRegisterRequest.json");
			return gson.fromJson(reader, MemberRegisterRequest.class);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String memberRegisterRequestToJson(MemberRegisterRequest request) {
		Gson gson = new Gson();
		
		request.setName("Mustafa");
		request.setSurname("İçmen");
		request.setEmailAddress("mustafa@icmen.com");
		request.setBirthDate("1980-01-01");
		request.setAddress("İÜ Avcılar Kampüs");
		request.setPassword("12345");
		request.setTelephoneNumber("0-212-473-70-70");
		
		return gson.toJson(request);
	}
}
