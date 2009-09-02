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

public class JyPartyAgent {
	public JyParty getParty(int partyid)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return null;
		}
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		Criteria c = session.createCriteria(JyParty.class);
		c.add(Expression.eq("partyid", partyid));
		List result = c.list();
		
		if(result.size() <= 0)
		{
			return null;
		}
		
		tx.commit();
        session.close();

		return (JyParty) (result.get(0));		
	}
	
	public List<JyParty> getPartyList(String[] filters,String orderBy,int limit)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return null;
		}
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		Criteria c = session.createCriteria(JyParty.class);
		
//		if(filters != null)
//		{
//			for(String key : filters.Keys)
//			{
//				c.add(Expression.eq("partyid", partyid));
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

		return (List<JyParty>) (result);
	}
}
