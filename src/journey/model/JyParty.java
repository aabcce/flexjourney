package journey.model;

import java.util.Date;

/**
 * JyParty entity. @author MyEclipse Persistence Tools
 */

public class JyParty implements java.io.Serializable {

	// Fields

	private Integer partyid;
	private Integer ownerid;
	private String owneremail;
	private Integer minnum;
	private Integer maxnum;
	private String title;
	private String content;
	private Date adddate;

	// Constructors

	/** default constructor */
	public JyParty() {
	}

	/** full constructor */
	public JyParty(Integer ownerid, String owneremail, Integer minnum,
			Integer maxnum, String title, String content, Date adddate) {
		this.ownerid = ownerid;
		this.owneremail = owneremail;
		this.minnum = minnum;
		this.maxnum = maxnum;
		this.title = title;
		this.content = content;
		this.adddate = adddate;
	}

	// Property accessors

	public Integer getPartyid() {
		return this.partyid;
	}

	public void setPartyid(Integer partyid) {
		this.partyid = partyid;
	}

	public Integer getOwnerid() {
		return this.ownerid;
	}

	public void setOwnerid(Integer ownerid) {
		this.ownerid = ownerid;
	}

	public String getOwneremail() {
		return this.owneremail;
	}

	public void setOwneremail(String owneremail) {
		this.owneremail = owneremail;
	}

	public Integer getMinnum() {
		return this.minnum;
	}

	public void setMinnum(Integer minnum) {
		this.minnum = minnum;
	}

	public Integer getMaxnum() {
		return this.maxnum;
	}

	public void setMaxnum(Integer maxnum) {
		this.maxnum = maxnum;
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

}