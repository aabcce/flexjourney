package journey.model;

/**
 * JyUser entity. @author MyEclipse Persistence Tools
 */

public class JyUser implements java.io.Serializable {

	// Fields

	private Integer userid;
	private String password;
	private String email;

	// Constructors

	/** default constructor */
	public JyUser() {
	}

	/** full constructor */
	public JyUser(String password, String email) {
		this.password = password;
		this.email = email;
	}

	// Property accessors

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}