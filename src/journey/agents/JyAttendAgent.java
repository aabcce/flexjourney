package journey.agents;

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
	public JyAttend getAttend(int attendid)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return null;
		}
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		Criteria c = session.createCriteria(JyAttend.class);
		c.add(Expression.eq("attendid", attendid));
		List result = c.list();
		
		if(result.size() <= 0)
		{
			return null;
		}
		
		tx.commit();
        session.close();

		return (JyAttend) (result.get(0));		
	}
	
	public List<JyAttend> getAttendList(String[] filters,String orderBy,int limit)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return null;
		}
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		Criteria c = session.createCriteria(JyAttend.class);
		
//		if(filters != null)
//		{
//			for(String key : filters.Keys)
//			{
//				c.add(Expression.eq("Attendid", Attendid));
//			}
//		}
		
		if(orderBy != null && orderBy.length() > 0)
		{
//			c.add()
		}
		
		if(limit > -1)
		{
			;
		}
		
		
		List result = c.list();
		
		if(result.size() <= 0)
		{
			return null;
		}
		
		tx.commit();
        session.close();

		return (List<JyAttend>) (result);
	}
}
