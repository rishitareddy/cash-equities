package com.crud;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.trade.InProgress;


public class InProgressDAO {
	
	public List<InProgress> getInProgressValues(){
		return null;
	}
	public void addOrUpdate(InProgress inProgress) {
		Configuration conf=new Configuration();
		conf.configure("hibernateconfig.xml");
		
		// creating session
		SessionFactory factory=conf.buildSessionFactory();
		Session session=factory.openSession();
		
		// get the current hibernate session
		Transaction t=session.beginTransaction();
		// create a query  ... sort by last name
		
		session.saveOrUpdate(inProgress);
		
		// return the results
		t.commit();
		factory.close();
	}
	public void delete(InProgress inProgress) {
		Configuration conf=new Configuration();
		conf.configure("hibernate.cfg.xml");
		
		// creating session
		SessionFactory factory=conf.buildSessionFactory();
		Session session=factory.openSession();
		
		// get the current hibernate session
		Transaction t=session.beginTransaction();
		// create a query  ... sort by last name
		
		session.delete(inProgress);
		
		// return the results
		t.commit();
		factory.close();
	}
}
