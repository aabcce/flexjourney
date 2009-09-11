package journey.agents;
import journey.model.*;

import java.sql.Timestamp;
import java.util.*;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Expression;

public class JyPhotoAgent {
	public boolean addPhotos(List<JyPhoto> photoList)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return false;
		}		
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		
		JyUser currUser = jua.getCurrUser();
		for(JyPhoto photo : photoList)
		{
			photo.setUserid(currUser.getUserid());
			photo.setUseremail(currUser.getEmail());
			photo.setAdddate(new Timestamp(new Date().getTime()));
			photo.setSerial(UUID.randomUUID().toString());
			session.save(photo);
		}
		
		tx.commit();
		session.close();
		return true;
	}
	
	public JyPhoto getPhoto(String photoid)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return null;
		}
		
		Session session = HibernateSessionFactory.getSession();
		Criteria c = session.createCriteria(JyPhoto.class);
		c.add(Expression.eq("photoid", Integer.parseInt(photoid)));
		List<JyPhoto> result = (List<JyPhoto>)(c.list());

		return (result.get(0));		
	}
		
	public List<JyPhoto> getPhotoList(String partyid)
	{
		JyUserAgent jua = new JyUserAgent();
		if(!(jua.isLogin()))
		{
			return null;
		}
		
		Session session = HibernateSessionFactory.getSession();
		Criteria c = session.createCriteria(JyPhoto.class);
		c.add(Expression.eq("partyid", Integer.parseInt(partyid)));
		List<JyPhoto> result = (List<JyPhoto>)(c.list());

		return (result);		
	}
}
