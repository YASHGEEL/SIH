package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entity.company_login;
import entity.student_login;

public class studentsignup {
	
	private String uname,first_name,last_name,college_name,mobile_no,password,email;
	

	public studentsignup() {
		super();
		// TODO Auto-generated constructor stub
	}

	public studentsignup(String uname, String first_name, String last_name, String college_name, String mobile_no,
			String password,String email) {
		super();
		this.uname = uname;
		this.first_name = first_name;
		this.last_name = last_name;
		this.college_name = college_name;
		
		this.mobile_no = mobile_no;
		this.password = password;
		this.email=email;
	}
	
	public void execute()
	{
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
			  EntityManager entitymanager = emfactory.createEntityManager( ); 
			  entitymanager.getTransaction( ).begin( ); 
			  
			  student_login sl = new student_login();
			  sl.setCollege_name(college_name);
			  sl.setFirst_name(first_name);
			  sl.setLast_name(last_name);
			  sl.setMobile_no(mobile_no);
			  sl.setPassword(password);
			  sl.setUname(uname);
			  sl.setEmail(email);
			  
			  entitymanager.persist( sl ); 
			  entitymanager.getTransaction().commit( ); 
			  
			  entitymanager.close( ); 
			  emfactory.close( ); 
			  
	}
	
	public boolean logincheck()
	{
		  EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
		  EntityManager entitymanager = emfactory.createEntityManager( ); 
		  entitymanager.getTransaction( ).begin( ); 
		
		  System.out.println(this.uname+" "+this.password);
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("logincheck");
		  q.setParameter(1,this.uname);
		  q.setParameter(2,this.password);
		//  sl.setUname(this.uname);
		 // sl.setPassword(this.password);
		 
		  entitymanager.getTransaction().commit( ); 
		  List<student_login> lg = q.getResultList();
		  
		  for (student_login a : lg) {
			    System.out.println("Author "
			            + a.getUname()
			            + " "
			            + a.getPassword());
			}
		
		  entitymanager.close( );
		  emfactory.close( );
		if(lg.size()>0)
		   return true;
		else
			return false;
	}
	
	public void verifyupdate(String un)
	{
		 EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
		  EntityManager entitymanager = emfactory.createEntityManager( ); 
		  entitymanager.getTransaction( ).begin( ); 
		
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("verifyupdate");
		  q.setParameter(1,un);
		 
		//  sl.setUname(this.uname);
		 // sl.setPassword(this.password);
		  q.executeUpdate();
		 
		  entitymanager.getTransaction().commit( ); 
		//  List<student_login> lg = q.getResultList();
		  
		  	
		  entitymanager.close( );
		  emfactory.close( );
	   
    }
	
	public  List<student_login> studentprofile(String uname)
	{
		 EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
		  EntityManager entitymanager = emfactory.createEntityManager( ); 
		  entitymanager.getTransaction( ).begin( ); 
		
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("studentprofile");
		  q.setParameter(1,uname);
		  
		  entitymanager.getTransaction().commit( ); 
		  List<student_login> lg = q.getResultList();
		  
		  for (student_login a : lg) {
			    System.out.println("Author "
			            + a.getUname()
			            + " "
			            + a.getFirst_name()
			    		+ a.getEmail());
			}
		
		  entitymanager.close( );
		  emfactory.close( );
		  
		  return lg;
	   
    }
	
	public void updatenew()
	{
		 EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
		  EntityManager entitymanager = emfactory.createEntityManager( ); 
		  entitymanager.getTransaction( ).begin( ); 
		
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("updatenew");
		  q.setParameter(1,this.email);
		  q.setParameter(2, this.password);
		  q.setParameter(3, this.mobile_no);
		  q.setParameter(4, this.uname);
		 
		//  sl.setUname(this.uname);
		 // sl.setPassword(this.password);
		  q.executeUpdate();
		 
		  entitymanager.getTransaction().commit( ); 
		//  List<student_login> lg = q.getResultList();
		  
		  	
		  entitymanager.close( );
		  emfactory.close( );
	   
    }
	
}

	
