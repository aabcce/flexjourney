package journey.model;

import java.util.Date;

/**
 * JyAttend entity. @author MyEclipse Persistence Tools
 */

public class JyAttend implements java.io.Serializable {

	// Fields

	private Integer attendid;
	private Integer partyid;
	private Integer userid;
	private String useremail;
	private String title;
	private String content;
	private Date adddate;
	private Integer auditid;
	private Date auditdate;
	private Integer auditresult;

	// Constructors

	/** default constructor */
	public JyAttend() {
	}

	/** full constructor */
	public JyAttend(Integer partyid, Integer userid, String useremail,
			String title, String content, Date adddate, Integer auditid,
			Date auditdate, Integer auditresult) {
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

	public Integer getAttendid() {
		return this.attendid;
	}

	public void setAttendid(Integer attendid) {
		this.attendid = attendid;
	}

	public Integer getPartyid() {
		return this.partyid;
	}

	public void setPartyid(Integer partyid) {
		this.partyid = partyid;
	}

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUseremail() {
		return this.useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getAdddate() {
		return this.adddate;
	}

	public void setAdddate(Date adddate) {
		this.adddate = adddate;
	}

	public Integer getAuditid() {
		return this.auditid;
	}

	public void setAuditid(Integer auditid) {
		this.auditid = auditid;
	}

	public Date getAuditdate() {
		return this.auditdate;
	}

	public void setAuditdate(Date auditdate) {
		this.auditdate = auditdate;
	}

	public Integer getAuditresult() {
		return this.auditresult;
	}

	public void setAuditresult(Integer auditresult) {
		this.auditresult = auditresult;
	}

}