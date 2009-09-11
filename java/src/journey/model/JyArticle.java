package journey.model;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * JyArticle entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "jy_article", catalog = "journey")
public class JyArticle implements java.io.Serializable {

	// Fields

	private Integer articleid;
	private String serial;
	private Integer userid;
	private Integer partyid;
	private String title;
	private String comment;
	private String content;
	private Timestamp adddate;
	private String useremail;

	// Constructors

	/** default constructor */
	public JyArticle() {
	}

	/** full constructor */
	public JyArticle(String serial, Integer userid, Integer partyid,
			String title, String comment, String content, Timestamp adddate,
			String useremail) {
		this.serial = serial;
		this.userid = userid;
		this.partyid = partyid;
		this.title = title;
		this.comment = comment;
		this.content = content;
		this.adddate = adddate;
		this.useremail = useremail;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "articleid", unique = true, nullable = false)
	public Integer getArticleid() {
		return this.articleid;
	}

	public void setArticleid(Integer articleid) {
		this.articleid = articleid;
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

	@Column(name = "content", nullable = false, length = 65535)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
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