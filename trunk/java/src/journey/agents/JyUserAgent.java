package journey.agents;
import java.util.List;

import journey.model.*;
import org.hibernate.*;
import org.hibernate.criterion.Expression;

import flex.messaging.FlexContext;
import flex.messaging.FlexSession;

import org.apache.log4j.*;

public class JyUserAgent {
	public boolean register(JyUser user)
	{
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        
        Criteria c = session.createCriteria(JyUser.class);
        String email = user.getEmail();
        c.add(Expression.eq("email", email));
        if(c.list().size() > 0)
        {
        	return false;
        }

        session.save(user);

        tx.commit();
        session.close();
		return true;
	}
	
	public boolean login(String email , String password)
	{
		Logger logger = LogManager.getLogger(JyUserAgent.class);
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		Criteria c = session.createCriteria(JyUser.class);
		c.add(Expression.eq("email", email));
		c.add(Expression.eq("password", password));
		List result = c.list();
		
		logger.info("Curr result: " + result.size());
		if(result.size() <= 0)
		{
			return(false);
		}
		
		FlexSession flexSession = FlexContext.getFlexSession();
		logger.info("Curr sessionid: " + flexSession.getId());
		
		JyUser user = (JyUser)result.get(0);
		flexSession.setAttribute("userid", user.getUserid());
		
        tx.commit();
        session.close();
		return true;
	}
	
	public boolean isLogin()
	{
		FlexSession flexSession = FlexContext.getFlexSession();
		Logger logger = LogManager.getLogger(JyUserAgent.class);
		logger.info("Curr sessionid: " + flexSession.getId());
		return(flexSession.getAttribute("userid") != null);
	}
	
	public void logout()
	{
		if(isLogin())
		{
			FlexContext.getFlexSession().removeAttribute("userid");
		}
	}

	public boolean lostPassword(String email)
	{
		JyUser user = getJyUserByEmail(email);
		
		return(!user.equals(null));
	}
	
	public JyUser getCurrUser()
	{
		FlexSession flexSession = FlexContext.getFlexSession();
		Logger logger = LogManager.getLogger(JyUserAgent.class);
		logger.info("Curr sessionid: " + flexSession.getId());
		Object userid = flexSession.getAttribute("userid");
		if(userid == null || userid.toString().length() <= 0)
			return(null);
		
		logger.info("Curr userid: " + userid);
		
		return(getJyUserByID(userid.toString()));
	}
	
	public JyUser getJyUserByID(String userid)
	{
		Session session = HibernateSessionFactory.getSession();
		Criteria c = session.createCriteria(JyUser.class);
		c.add(Expression.eq("userid", Integer.parseInt(userid)));
		List result = c.list();
		if(result.size() <= 0)
		{
			return(null);
		}
        session.close();
		
		return((JyUser)result.get(0));
	}
	
	public JyUser getJyUserByEmail(String email)
	{
		Session session = HibernateSessionFactory.getSession();
		
		Criteria c = session.createCriteria(JyUser.class);
		c.add(Expression.eq("email", email));
		List result = c.list();
		if(result.size() <= 0)
		{
			return(null);
		}
        session.close();
		
		return((JyUser)result.get(0));
	}
}
