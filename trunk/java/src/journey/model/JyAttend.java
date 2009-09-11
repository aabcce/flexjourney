package journey.model;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * JyAttend entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "jy_attend", catalog = "journey")
public class JyAttend implements java.io.Serializable {

	// Fields

	private Integer attendid;
	private Integer partyid;
	private Integer userid;
	private String useremail;
	private String title;
	private String content;
	private Timestamp adddate;
	private Integer auditid;
	private Timestamp auditdate;
	private Integer auditresult;

	// Constructors

	/** default constructor */
	public JyAttend() {
	}

	/** full constructor */
	public JyAttend(Integer partyid, Integer userid, String useremail,
			String title, String content, Timestamp adddate, Integer auditid,
			Timestamp auditdate, Integer auditresult) {
		this.partyid = partyid;
		this.userid = userid;
		this.useremail = useremail;
		this.title = title;
		this.content = content;
		this.adddate = adddate;
		this.auditid = auditid;
		this.auditdate = auditdate;
		this.auditresult = auditresult;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "ATTENDID", unique = true, nullable = false)
	public Integer getAttendid() {
		return this.attendid;
	}

	public void setAttendid(Integer attendid) {
		this.attendid = attendid;
	}

	@Column(name = "PARTYID")
	public Integer getPartyid() {
		return this.partyid;
	}

	public void setPartyid(Integer partyid) {
		this.partyid = partyid;
	}

	@Column(name = "USERID")
	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	@Column(name = "USEREMAIL", length = 50)
	public String getUseremail() {
		return this.useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	@Column(name = "TITLE", length = 200)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "CONTENT", length = 65535)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "ADDDATE", length = 19)
	public Timestamp getAdddate() {
		return this.adddate;
	}

	public void setAdddate(Timestamp adddate) {
		this.adddate = adddate;
	}

	@Column(name = "AUDITID")
	public Integer getAuditid() {
		return this.auditid;
	}

	public void setAuditid(Integer auditid) {
		this.auditid = auditid;
	}

	@Column(name = "AUDITDATE", length = 19)
	public Timestamp getAuditdate() {
		return this.auditdate;
	}

	public void setAuditdate(Timestamp auditdate) {
		this.auditdate = auditdate;
	}

	@Column(name = "AUDITRESULT")
	public Integer getAuditresult() {
		return this.auditresult;
	}

	public void setAuditresult(Integer auditresult) {
		this.auditresult = auditresult;
	}

}