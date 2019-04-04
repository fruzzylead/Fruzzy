package fruzzy.model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ModelTest {
	public static void main(String[] args) {
		SessionFactory factory = new Configuration().configure().addAnnotatedClass(PersonalDetails.class)
				.addAnnotatedClass(ApplicationDetails.class).addAnnotatedClass(UsersMappingDetails.class)
				.addAnnotatedClass(FeedActivityDetails.class).addAnnotatedClass(MultiMediaDetails.class)
				.addAnnotatedClass(TextMediaDetails.class).addAnnotatedClass(LikeDetails.class)
				.addAnnotatedClass(CommentDetails.class).buildSessionFactory();
//		
//		PersonalDetails personalDetails=new PersonalDetails("user1", "anish_cool_dude", "ad", "123", "Male", new java.sql.Date(new java.util.Date().getTime()), "", "",0);
//		PersonalDetails personalDetails1=new PersonalDetails("user2", "anish_not_so_cool_dude", "asa", "123", "Male", new java.sql.Date(new java.util.Date().getTime()), "", "",0);
//		ApplicationDetails applicationDetails=new ApplicationDetails(personalDetails, new java.sql.Date(new java.util.Date().getTime()));
//		UsersMappingDetails usersMappingDetails=new UsersMappingDetails(new UserMappingId(personalDetails,personalDetails1));
//		FeedActivityDetails feedActivityDetails=new FeedActivityDetails("PIC1344", personalDetails, new java.sql.Date(new java.util.Date().getTime()));
//		FeedActivityDetails feedActivityDetails1=new FeedActivityDetails("TEX1344", personalDetails, new java.sql.Date(new java.util.Date().getTime()));
//		MultiMediaDetails multiMediaDetails = new MultiMediaDetails(feedActivityDetails,"img","jpg","This is awesome!!!","img/img1",12.02);
//		TextMediaDetails textMediaDetails1 = new TextMediaDetails(feedActivityDetails1,"This is awesome!!!","Maybe not so awesome");
//		LikeDetails likeDetails = new LikeDetails(feedActivityDetails,"ABDJBDJ");
//		CommentDetails commentDetails = new CommentDetails("C01",feedActivityDetails,personalDetails1,"HAHAHAHA",new java.sql.Date(new java.util.Date().getTime()));

		
		Session session = factory.openSession();
		session.beginTransaction();
//		session.save(personalDetails);
//		session.save(personalDetails1);
//		session.save(feedActivityDetails);
//		session.save(feedActivityDetails1);
//		session.save(usersMappingDetails);
//		session.save(applicationDetails);
//		session.save(multiMediaDetails);
//		session.save(textMediaDetails1);
//		session.save(likeDetails);
//		session.save(commentDetails);
		session.delete(session.get(PersonalDetails.class, "user1"));
		session.getTransaction().commit();
		session.close();
		factory.close();
		
	}
}
