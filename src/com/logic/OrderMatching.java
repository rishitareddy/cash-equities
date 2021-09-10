package com.logic;

import java.math.BigDecimal;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.crud.InProgressDAO;
import com.crud.UserHistoryDAO;
import com.trade.InProgress;
import com.trade.UserHistory;



public class OrderMatching {
	public boolean processOrder(InProgress inProgress) {
		PrioriryList prioriryList=new PrioriryList();
		
		InProgressDAO inProgressDAO=new InProgressDAO();
		inProgressDAO.addOrUpdate(inProgress);
		
		
		// limit order
		List<InProgress> orderList=null;
		if(inProgress.getDirection().equals("buy")) {
			orderList = prioriryList.sell(inProgress.getSecurityName());
			
		}else {
			 orderList = prioriryList.buy(inProgress.getSecurityName());
		}
		
		if(inProgress.getTradeType().equals("Limit")) {
			doLimitMatch(inProgress,orderList);
		}else {
			doMarketOrder(inProgress,orderList);
		}
		
		return false;
	}
	public boolean doLimitMatch(InProgress current,List<InProgress> orderList) {
		//Pranav Logic
		InProgressDAO inProgressDAO = new InProgressDAO();
		UserHistoryDAO userHistoryDAO = new UserHistoryDAO();
		
		//sell part
		if(current.getDirection().equals("sell")) {
			for(int i=0;i<orderList.size();i++) {
				//if money of selling is lesser or equal
				if((orderList.get(i).getPriceOfSecurity().compareTo(current.getPriceOfSecurity())>=0)) {
					// if quantity available is greater
					if(orderList.get(i).getRemainingQuantity()>=current.getRemainingQuantity()) {
						//match done
						orderList.get(i).setRemainingQuantity(current.getRemainingQuantity());
						current.setRemainingQuantity(current.getRemainingQuantity());
						current.setStatus("Exe");
						if(orderList.get(i).getRemainingQuantity()==0) {
							orderList.get(i).setStatus("Exe");
						}else {
							orderList.get(i).setStatus("Par");
						}
						BigDecimal totalPrice=orderList.get(i).getPriceOfSecurity().multiply(new BigDecimal(current.getRemainingQuantity()));
						orderList.get(i).setTotalPrice(totalPrice);
						current.setTotalPrice(totalPrice);
						//commit
						inProgressDAO.addOrUpdate(current);
						inProgressDAO.addOrUpdate(orderList.get(i));
						
						//UserHistory Part
						UserHistory transaction=new UserHistory(orderList.get(i).getUserId(), orderList.get(i).getOrderId(),current.getUserId(),
								current.getOrderId(), current.getSecurityName(), current.getSecurityCode(),
								current.getSecurityType(), current.getQuantity(),orderList.get(i).getPriceOfSecurity(), 
								new Timestamp(new Date().getTime()), current.getCurrency());
						
						userHistoryDAO.addOrUpdate(transaction);
						//commited
						break;
					}else {
						//if the stock quantity is partially available
						current.setRemainingQuantity(orderList.get(i).getRemainingQuantity());
						orderList.get(i).setRemainingQuantity(orderList.get(i).getRemainingQuantity());
						if(orderList.get(i).getRemainingQuantity()==0) {
							orderList.get(i).setStatus("Exe");
						}else {
							orderList.get(i).setStatus("Par");
						}
						if(current.getRemainingQuantity()>0) {
							current.setStatus("Par");
						}else {
							current.setStatus("Exe");
						}
						//since only orderlist quantity is sold
						BigDecimal totalPrice=orderList.get(i).getPriceOfSecurity().multiply(new BigDecimal(orderList.get(i).getRemainingQuantity()));
						orderList.get(i).setTotalPrice(totalPrice);
						current.setTotalPrice(totalPrice);
						//commit
						inProgressDAO.addOrUpdate(current);
						inProgressDAO.addOrUpdate(orderList.get(i));
						//UserHistory Part
						UserHistory transaction=new UserHistory(orderList.get(i).getUserId(), orderList.get(i).getOrderId(),current.getUserId(),
								current.getOrderId(), current.getSecurityName(), current.getSecurityCode(),
								current.getSecurityType(), current.getQuantity(),orderList.get(i).getPriceOfSecurity(), 
								new Timestamp(new Date().getTime()), current.getCurrency());
						
						userHistoryDAO.addOrUpdate(transaction);
						//commited	
					}
				}
			}
		}else {
			//Buy Order 
			for(int i=0;i<orderList.size();i++) {
				//if seller willing to sell at low price
				if((orderList.get(i).getPriceOfSecurity().compareTo(current.getPriceOfSecurity())<=0)) {
					// if quantity available is greater
					if(orderList.get(i).getRemainingQuantity()>=current.getRemainingQuantity()) {
						//match done
						orderList.get(i).setRemainingQuantity(current.getRemainingQuantity());
						current.setRemainingQuantity(current.getRemainingQuantity());
						current.setStatus("Exe");
						if(orderList.get(i).getRemainingQuantity()==0) {
							orderList.get(i).setStatus("Exe");
						}else {
							orderList.get(i).setStatus("Par");
						}
						BigDecimal totalPrice=current.getPriceOfSecurity().multiply(new BigDecimal(current.getRemainingQuantity()));
						orderList.get(i).setTotalPrice(totalPrice);
						current.setTotalPrice(totalPrice);
						
						//commit
						inProgressDAO.addOrUpdate(current);
						inProgressDAO.addOrUpdate(orderList.get(i));
						
						//UserHistory Part
						UserHistory transaction=new UserHistory(current.getUserId(),
								current.getOrderId(), orderList.get(i).getUserId(), orderList.get(i).getOrderId(),current.getSecurityName(), current.getSecurityCode(),
								current.getSecurityType(), current.getQuantity(),current.getPriceOfSecurity(), 
								new Timestamp(new Date().getTime()), current.getCurrency());
						
						userHistoryDAO.addOrUpdate(transaction);
						//commited
						break;
					}else {
						//if the stock quantity is partially available
						current.setRemainingQuantity(orderList.get(i).getRemainingQuantity());
						orderList.get(i).setRemainingQuantity(orderList.get(i).getRemainingQuantity());
						if(orderList.get(i).getRemainingQuantity()==0) {
							orderList.get(i).setStatus("Exe");
						}else {
							orderList.get(i).setStatus("Par");
						}
						if(current.getRemainingQuantity()>0) {
							current.setStatus("Par");
						}else {
							current.setStatus("Exe");
						}
						//since only orderlist quantity is sold
						BigDecimal totalPrice=current.getPriceOfSecurity().multiply(new BigDecimal(orderList.get(i).getRemainingQuantity()));
						orderList.get(i).setTotalPrice(totalPrice);
						current.setTotalPrice(totalPrice);
						//commit
						inProgressDAO.addOrUpdate(current);
						inProgressDAO.addOrUpdate(orderList.get(i));
						//UserHistory Part
						UserHistory transaction=new UserHistory(orderList.get(i).getUserId(), orderList.get(i).getOrderId(),current.getUserId(),
								current.getOrderId(), current.getSecurityName(), current.getSecurityCode(),
								current.getSecurityType(), orderList.get(i).getQuantity(),current.getPriceOfSecurity(), 
								new Timestamp(new Date().getTime()), current.getCurrency());
						
						userHistoryDAO.addOrUpdate(transaction);
						//commited	
					}
				}
			}
		}
		
		
		
		
		
		//Hafeez Logic
		/*InProgressDAO inProgressDAO = new InProgressDAO();
		UserHistoryDAO userHistoryDAO = new UserHistoryDAO();
		if(current.getDirection().equals("sell")) {
			for(int i=0;i<orderList.size();i++) {
				if(!(orderList.get(i).getPriceOfSecurity().compareTo(current.getPriceOfSecurity())<=0)) {
					if(i!=0) {
						if(orderList.get(i-1).getQuantity()>current.getQuantity()) {
							// complete order
							inProgressDAO.delete(orderList.get(i-1));
							UserHistory userHistory= 
							
	new UserHistory(orderList.get(i-1).getUserId(), orderList.get(i-1).getOrderId()+"", current.getUserId(),
		current.getOrderId()+"", current.getSecurityName(), current.getSecurityCode(),
		current.getSecurityType(), current.getQuantity(),new BigDecimal(current.getCurrency()), 
		new Timestamp(new Date().getTime()), current.getCurrency());
							userHistoryDAO.addOrUpdate(userHistory);
							
							InProgress temp = orderList.get(i-1);
							temp.setQuantity(temp.getQuantity()-current.getQuantity());
							inProgressDAO.addOrUpdate(temp);
							
							
							return true;
						}else if(orderList.get(i-1).getQuantity()==current.getQuantity()) {
							// complete order
							// inProgressDAO.delete(orderList.get(i-1));
							orderList.get(i-1).setStatus("completed");
							inProgressDAO.addOrUpdate(orderList.get(i-1));
							UserHistory userHistory= 
							
	new UserHistory(orderList.get(i-1).getUserId(), orderList.get(i-1).getOrderId()+"", current.getUserId(),
		current.getOrderId()+"", current.getSecurityName(), current.getSecurityCode(),
		current.getSecurityType(), current.getQuantity(),new BigDecimal(current.getCurrency()), 
		new Timestamp(new Date().getTime()), current.getCurrency());
							userHistoryDAO.addOrUpdate(userHistory);
							
							return true;
						}else {
							// partial
							
						}
					}
				}
			}
		}else {
			for(int i=0;i<orderList.size();i++) {
				if(orderList.get(i).getPriceOfSecurity().compareTo(current.getPriceOfSecurity())>=0) {
					if(i!=0) {
						if(orderList.get(i-1).getQuantity()>=current.getQuantity()) {
							if(i!=0) {
								// selling code
								
								if(orderList.get(i-1).getQuantity()>current.getQuantity()) {
									// complete order
									inProgressDAO.delete(orderList.get(i-1));
									UserHistory userHistory= 
									
			new UserHistory(orderList.get(i-1).getUserId(), orderList.get(i-1).getOrderId()+"", current.getUserId(),
				current.getOrderId()+"", current.getSecurityName(), current.getSecurityCode(),
				current.getSecurityType(), current.getQuantity(),new BigDecimal(current.getCurrency()), 
				new Timestamp(new Date().getTime()), current.getCurrency());
									userHistoryDAO.addOrUpdate(userHistory);
									
									InProgress temp = orderList.get(i-1);
									temp.setQuantity(temp.getQuantity()-current.getQuantity());
									inProgressDAO.addOrUpdate(temp);
									
									
									return true;
								}else if(orderList.get(i-1).getQuantity()==current.getQuantity()) {
									// complete order
									inProgressDAO.delete(orderList.get(i-1));
									UserHistory userHistory= 
									
			new UserHistory(orderList.get(i-1).getUserId(), orderList.get(i-1).getOrderId()+"", current.getUserId(),
				current.getOrderId()+"", current.getSecurityName(), current.getSecurityCode(),
				current.getSecurityType(), current.getQuantity(),new BigDecimal(current.getCurrency()), 
				new Timestamp(new Date().getTime()), current.getCurrency());
									userHistoryDAO.addOrUpdate(userHistory);
									
									return true;
								}else {
									// partial
								}
							}
							return true;
						}else {
							// partial
						}
					}else {
						
					}
				}
			}
		}*/
		
		return false;
	}
	public boolean doMarketOrder(InProgress current,List<InProgress> orderList) {
		InProgressDAO inProgressDAO=new InProgressDAO();
		UserHistoryDAO userHistoryDAO=new UserHistoryDAO();
		
		for(int i=0;i<orderList.size();i++) {
			if(orderList.get(i).getQuantity()==current.getQuantity()) {
				current.setStatus("Exe");
				orderList.get(i).setStatus("Exe");
				current.setRemainingQuantity(0);
				orderList.get(i).setRemainingQuantity(0);
				
				inProgressDAO.addOrUpdate(current);
				inProgressDAO.addOrUpdate(orderList.get(i));
				
				UserHistory userHistory=
						new UserHistory(orderList.get(i).getUserId(), orderList.get(i).getOrderId(), current.getUserId(),
								current.getOrderId(), current.getSecurityName(), current.getSecurityCode(),
								current.getSecurityType(), current.getQuantity(),current.getPriceOfSecurity(), 
								new Timestamp(new Date().getTime()), current.getCurrency());
				
				userHistoryDAO.addOrUpdate(userHistory);
				return true;
			}else if(orderList.get(i).getQuantity()>current.getQuantity()) {
				current.setStatus("completed");
				 orderList.get(i).setStatus("Partial");
				
				inProgressDAO.addOrUpdate(current);
				// inProgressDAO.addOrUpdate(orderList.get(i));
				
				orderList.get(i).setQuantity(orderList.get(i).getQuantity()-current.getQuantity());
				inProgressDAO.addOrUpdate(orderList.get(i));
				
				
				UserHistory userHistory=
						new UserHistory(orderList.get(i).getUserId(), orderList.get(i).getOrderId(), current.getUserId(),
								current.getOrderId(), current.getSecurityName(), current.getSecurityCode(),
								current.getSecurityType(), current.getQuantity(),new BigDecimal(current.getCurrency()), 
								new Timestamp(new Date().getTime()), current.getCurrency());
				
				userHistoryDAO.addOrUpdate(userHistory);
				return true;
			} else {
				// partial
			}
		}
		return false;
	}
}
