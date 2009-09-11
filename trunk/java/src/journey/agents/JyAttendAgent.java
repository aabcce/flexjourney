package journey.agents;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Dictionary;
import java.util.List;
import java.util.Vector;

import journey.model.*;

import org.hibernate.*;
import org.hibernate.criterion.*;

import flex.messaging.FlexContext;
import flex.messaging.FlexSession;

import org.apache.log4j.*;

public class JyAttendAgent {
	
	public boolean addAttend(JyAttend attend)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return false;
		}
		
		JyUser currUser = jua.getCurrUser();
		
		Session session = HibernateSessionFactory.getSession();	
		Criteria c = session.createCriteria(JyAttend.class);
        String email = currUser.getEmail();
        c.add(Expression.eq("useremail", email));
        c.add(Expression.eq("partyid", attend.getPartyid()));
        if(c.list().size() > 0)
        {
        	return false;
        }
        
		Transaction tx = session.beginTransaction();
		attend.setAdddate(new Timestamp(new Date().getTime()));
		attend.setAuditdate(null);
		attend.setAuditid(0);
		attend.setAuditresult(-1);
		attend.setUseremail(currUser.getEmail());
		attend.setUserid(currUser.getUserid());
		session.save(attend);
		tx.commit();
        session.close();
		return true;
	}
	
	public JyAttend getAttend(String attendid)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return null;
		}
		
		Session session = HibernateSessionFactory.getSession();
		Criteria c = session.createCriteria(JyAttend.class);
		c.add(Expression.eq("attendid", Integer.parseInt(attendid)));
		List<JyAttend> result = (List<JyAttend>)(c.list());
		
		if(result.size() <= 0)
		{
			return null;
		}
		
		return (result.get(0));		
	}
	
	public List<JyAttend> getAttendListByID(String partyid)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return null;
		}
		
		Session session = HibernateSessionFactory.getSession();	
		Criteria c = session.createCriteria(JyAttend.class);
		c.add(Expression.eq("partyid", Integer.parseInt(partyid)));
		c.add(Expression.eq("auditresult", 1));
		
		List<JyAttend> result = (List<JyAttend>)c.list();

		return (result);
	}
	
	public boolean isCurrUserAttended(String partyid)
	{
	    JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return false;
		}
		return(isAttended(partyid,jua.getCurrUser().getUserid().toString()));
	}
	
	public boolean isAttended(String partyid,String userid)
	{		
		Session session = HibernateSessionFactory.getSession();	
		Criteria c = session.createCriteria(JyAttend.class);
		c.add(Expression.eq("partyid", Integer.parseInt(partyid)));
		c.add(Expression.eq("userid", Integer.parseInt(userid)));
		c.add(Expression.eq("auditresult", 1));
		
		List<JyAttend> result = (List<JyAttend>)c.list();

		return (!result.equals(null));
	}
	
}
