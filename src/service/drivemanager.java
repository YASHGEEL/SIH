package service;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entity.college_login;
import entity.drive;

public class drivemanager {
	
	private String c_uname,c_name,college,city,total,date;
	

	public drivemanager() {
		super();
		// TODO Auto-generated constructor stub
	}
	public drivemanager(String c_uname, String c_name, String college, String city, String total, String date) {
		super();
		this.c_uname = c_uname;
		this.c_name = c_name;
		this.college = college;
		this.city = city;
		this.total = total;
		this.date = date;
	}
	public void execute()
	{
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
			  EntityManager entitymanager = emfactory.createEntityManager( ); 
			  entitymanager.getTransaction( ).begin( ); 
			  
			  drive d = new drive();
			  d.setC_uname(c_uname);
			  d.setC_name(c_name);
			  d.setCollege(college);
			  d.setCity(city);
			  d.setTotal(total);
			  d.setDate(date);
			  
			  entitymanager.persist( d ); 
			  entitymanager.getTransaction().commit( ); 
			  entitymanager.close( ); 
			  emfactory.close( ); 
	}
	
	public  List<drive> indexcollege(String c_uname)
	{
		 EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
		  EntityManager entitymanager = emfactory.createEntityManager( ); 
		  entitymanager.getTransaction( ).begin( ); 
		
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("drivedetail");
		  System.out.println("cuname is"+ c_uname);
		  q.setParameter(1,c_uname);
		  
		  entitymanager.getTransaction().commit( ); 
		  List<drive> lg = q.getResultList();
		  entitymanager.close( );
		  emfactory.close( );
		  
		  return lg;
	   
    }
	
	public  List<drive> indexcollege()
	{
		 EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
		  EntityManager entitymanager = emfactory.createEntityManager( ); 
		  entitymanager.getTransaction( ).begin( ); 
		
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("drived");
		  
		  
		  
		  entitymanager.getTransaction().commit( ); 
		  List<drive> lg = q.getResultList();
		  entitymanager.close( );
		  emfactory.close( );
		  
		  return lg;
	   
    }
	public  List<drive> indexcoll(String college)
	{
		 EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
		  EntityManager entitymanager = emfactory.createEntityManager( ); 
		  entitymanager.getTransaction( ).begin( ); 
		
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("driveddd");
		  System.out.println("cuname is"+ c_uname);
		  q.setParameter(1,college);
		  
		  entitymanager.getTransaction().commit( ); 
		  List<drive> lg = q.getResultList();
		  entitymanager.close( );
		  emfactory.close( );
		  
		  return lg;
	   
    }
	

}
