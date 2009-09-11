package journey.agents;

import java.sql.Timestamp;
import java.util.*;

import journey.model.HibernateSessionFactory;
import journey.model.JyArticle;
import journey.model.JyParty;
import journey.model.JyUser;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Expression;

public class JyArticleAgent {
	
	public boolean addArticle(JyArticle article)
	{        
        JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return false;
		}

		Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        
        JyUser currUser = jua.getCurrUser();
        article.setUserid(currUser.getUserid());
        article.setUseremail(currUser.getEmail());
        article.setAdddate(new Timestamp(new Date().getTime()));
        article.setSerial(UUID.randomUUID().toString());
        session.save(article);

        tx.commit();
        session.close();
		return true;
	}
	
	public List<JyArticle> getArticleList(String partyid)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return null;
		}
		
		Session session = HibernateSessionFactory.getSession();
		Criteria c = session.createCriteria(JyArticle.class);
		c.add(Expression.eq("partyid", Integer.parseInt(partyid)));
		List<JyArticle> result = (List<JyArticle>)(c.list());

		return (result);		
	}
}
