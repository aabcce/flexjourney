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

public class JyPartyAgent {
	
	public boolean addParty(JyParty party)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return false;
		}
		
		JyUser currUser = jua.getCurrUser();
		party.setOwnerid(currUser.getUserid());
		party.setOwneremail(currUser.getEmail());
		party.setAdddate(new Timestamp(new Date().getTime()));
				
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		session.save(party);
		tx.commit();
        session.close();
		return true;
	}
	
	public JyParty getParty(int partyid)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return null;
		}
		
		Session session = HibernateSessionFactory.getSession();
		Criteria c = session.createCriteria(JyParty.class);
		c.add(Expression.eq("partyid", partyid));
		List result = c.list();
		
		if(result.size() <= 0)
		{
			return null;
		}

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
			String[] orderByList = orderBy.split(",");
			for(String o : orderByList)
			{
				o = o.trim();
				if(o.length() <= 0) break;
				String[] tmp = o.split(" ");
				if(tmp.length == 2 && tmp[1].trim().toLowerCase().equals("desc"))
				{
					c.addOrder(Order.desc(tmp[0]));
				}
				else
				{
					c.addOrder(Order.asc(tmp[0]));
				}
			}
			
		}
		
		if(limit > -1)
		{
			
		}		
		
		List<JyParty> result = (List<JyParty>)c.list();
		
		if(result.size() <= 0)
		{
			return null;
		}

		return (result);
	}
}
