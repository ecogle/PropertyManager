package application;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AnotherTest {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String firstName;
	public String lastName;
	
	
	public AnotherTest(String fString, String lString){
		this.firstName = fString;
		this.lastName = lString;
	}
	public AnotherTest(){
		super();
	}
}
