package journey.model;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * JyPhoto entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "jy_photo", catalog = "journey")
public class JyPhoto implements java.io.Serializable {

	// Fields

	private Integer photoid;
	private String serial;
	private Integer userid;
	private Integer partyid;
	private String title;
	private String comment;
	private Timestamp adddate;
	private String useremail;

	// Constructors

	/** default constructor */
	public JyPhoto() {
	}

	/** full constructor */
	public JyPhoto(String serial, Integer userid, Integer partyid,
			String title, String comment, Timestamp adddate, String useremail) {
		this.serial = serial;
		this.userid = userid;
		this.partyid = partyid;
		this.title = title;
		this.comment = comment;
		this.adddate = adddate;
		this.useremail = useremail;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "photoid", unique = true, nullable = false)
	public Integer getPhotoid() {
		return this.photoid;
	}

	public void setPhotoid(Integer photoid) {
		this.photoid = photoid;
	}

	@Column(name = "serial", nullable = false, length = 50)
	public String getSerial() {
		return this.serial;
	}

	public void setSerial(String serial) {
		this.serial = serial;
	}

	@Column(name = "userid", nullable = false)
	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	@Column(name = "partyid", nullable = false)
	public Integer getPartyid() {
		return this.partyid;
	}

	public void setPartyid(Integer partyid) {
		this.partyid = partyid;
	}

	@Column(name = "title", nullable = false, length = 200)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "comment", nullable = false, length = 200)
	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	@Column(name = "adddate", nullable = false, length = 19)
	public Timestamp getAdddate() {
		return this.adddate;
	}

	public void setAdddate(Timestamp adddate) {
		this.adddate = adddate;
	}

	@Column(name = "useremail", nullable = false, length = 50)
	public String getUseremail() {
		return this.useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

}