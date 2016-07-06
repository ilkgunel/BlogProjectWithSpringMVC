package entitties;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the members database table.
 * 
 */
@Entity
@Table(name="members")
@NamedQuery(name="Member.findAll", query="SELECT m FROM Member m")
public class Member implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String address;

	private String emailAddress;

	private String name;

	private String password;

	private String surname;

	private String telephoneNumber;

	public Member() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmailAddress() {
		return this.emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSurname() {
		return this.surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getTelephoneNumber() {
		return this.telephoneNumber;
	}

	public void setTelephoneNumber(String telephoneNumber) {
		this.telephoneNumber = telephoneNumber;
	}

}