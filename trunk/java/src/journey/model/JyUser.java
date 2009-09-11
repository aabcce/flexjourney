package journey.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * JyUser entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "jy_user", catalog = "journey")
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
	@Id
	@GeneratedValue
	@Column(name = "USERID", unique = true, nullable = false)
	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	@Column(name = "PASSWORD", length = 36)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "EMAIL", length = 50)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}