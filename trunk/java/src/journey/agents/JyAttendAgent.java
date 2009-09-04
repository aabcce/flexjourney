package journey.agents;

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
		attend.setAdddate(new Date());
		attend.setAuditdate(null);
		attend.setAuditid(0);
		attend.setAuditresult(-1);
		attend.setUseremail(currUser.getEmail());
		attend.setUserid(currUser.getUserid());
				
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		session.save(attend);
		tx.commit();
        session.close();
		return true;
	}
	
	public JyAttend getAttend(int attendid)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return null;
		}
		
		Session session = HibernateSessionFactory.getSession();
		Criteria c = session.createCriteria(JyAttend.class);
		c.add(Expression.eq("attendid", attendid));
		List result = c.list();
		
		if(result.size() <= 0)
		{
			return null;
		}
		
        session.close();

		return (JyAttend) (result.get(0));		
	}
	
	public List<JyAttend> getAttendListByID(String partid)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return null;
		}
		
		Session session = HibernateSessionFactory.getSession();	
		Criteria c = session.createCriteria(JyAttend.class);
		c.add(Expression.eq("partyid", partid));
		c.add(Expression.eq("auditresult", 1));
		
		List<JyAttend> result = (List<JyAttend>)c.list();
		
		session.close();
		return (result);
	}
	
}
