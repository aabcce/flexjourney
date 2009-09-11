package tests.agents;

import static org.junit.Assert.*;

import java.sql.Timestamp;
import java.util.Date;

import journey.agents.*;
import journey.model.HibernateSessionFactory;
import journey.model.JyArticle;
import journey.model.JyParty;
import journey.model.JyUser;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class JyArticleAgentTest {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testAddArticle() {
//		fail("Not yet implemented");
		JyArticle article = new JyArticle();
		article.setAdddate(new Timestamp(new Date().getTime()));
		article.setComment("asdfasdf");
		article.setContent("asdfasd"/*Hibernate.createClob("asdfasd")*/);
		article.setPartyid(1);
		article.setSerial(java.util.UUID.randomUUID().toString());
		article.setTitle("title");
		article.setUseremail("asdfasd");
		article.setUserid(1);
		        
        Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		session.save(article);
		tx.commit();
        session.close();
	}
}
