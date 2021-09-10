package com.logic;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;



import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.trade.InProgress;

public class PrioriryList {
	protected List<InProgress> buy(String stock) {
		Configuration config = new Configuration().configure("hibernateconfig.xml");  
    	SessionFactory factory = config.buildSessionFactory();  
    	Session session = factory.openSession();  
        Transaction transaction = null;
        List<InProgress> InProgressList=null;
		try {
			
            transaction = session.beginTransaction();
             InProgressList = session.createCriteria(InProgress.class)
            	    .add( Restrictions.like("securityName", stock))
            	    .add( Restrictions.like("direction", "buy"))
            	    .addOrder( Order.desc("priceOfSecurity") )
            	    .addOrder( Order.asc("timeStamp") )
            	    .addOrder( Order.desc("quantity") )
            	    .list();
           
            System.out.println("In buy!!!/n/n");
            System.out.println("Price  Quantity  Name");
            
            
		}catch(HibernateException e) {
			transaction.rollback();
			System.out.println(e);
            e.printStackTrace();

		}
		return InProgressList;
	}

	protected List<InProgress> sell(String stock) {
		
		Configuration config = new Configuration().configure("hibernateconfig.xml");  
    	SessionFactory factory = config.buildSessionFactory();  
    	Session session = factory.openSession();  
        Transaction transaction = null;
        List<InProgress> InProgressList=null;
		try {
			
            transaction = session.beginTransaction();
             InProgressList = session.createCriteria(InProgress.class)
            		.add( Restrictions.like("securityName", stock))
            	    .add( Restrictions.like("direction", "sell"))
            	    .addOrder( Order.asc("priceOfSecurity") )
            	    .addOrder( Order.asc("timeStamp") )
            	    .addOrder( Order.desc("quantity") )
            	    .list();
            System.out.println("In sell!!!/n/n");
            System.out.println("Name  Quantity  Price");
		}catch(HibernateException e) {
			transaction.rollback();
			 System.out.println(e);
            e.printStackTrace();

		}
		return InProgressList;
	}
}
