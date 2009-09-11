package journey.model;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * JyParty entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "jy_party", catalog = "journey")
public class JyParty implements java.io.Serializable {

	// Fields

	private Integer partyid;
	private Integer ownerid;
	private String owneremail;
	private Integer minnum;
	private Integer maxnum;
	private String title;
	private String content;
	private Timestamp adddate;

	// Constructors

	/** default constructor */
	public JyParty() {
	}

	/** full constructor */
	public JyParty(Integer ownerid, String owneremail, Integer minnum,
			Integer maxnum, String title, String content, Timestamp adddate) {
		this.ownerid = ownerid;
		this.owneremail = owneremail;
		this.minnum = minnum;
		this.maxnum = maxnum;
		this.title = title;
		this.content = content;
		this.adddate = adddate;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "PARTYID", unique = true, nullable = false)
	public Integer getPartyid() {
		return this.partyid;
	}

	public void setPartyid(Integer partyid) {
		this.partyid = partyid;
	}

	@Column(name = "OWNERID")
	public Integer getOwnerid() {
		return this.ownerid;
	}

	public void setOwnerid(Integer ownerid) {
		this.ownerid = ownerid;
	}

	@Column(name = "OWNEREMAIL", length = 50)
	public String getOwneremail() {
		return this.owneremail;
	}

	public void setOwneremail(String owneremail) {
		this.owneremail = owneremail;
	}

	@Column(name = "MINNUM")
	public Integer getMinnum() {
		return this.minnum;
	}

	public void setMinnum(Integer minnum) {
		this.minnum = minnum;
	}

	@Column(name = "MAXNUM")
	public Integer getMaxnum() {
		return this.maxnum;
	}

	public void setMaxnum(Integer maxnum) {
		this.maxnum = maxnum;
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

}