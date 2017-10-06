package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entity.college_login;
import entity.company_login;

public class collegesignup {
	
	private String c_uname,name,email,website,mobile_no,city,university,password;

	public collegesignup(String c_uname, String name, String email, String website, String mobile_no, String city,
			String university, String password) {
		super();
		this.c_uname = c_uname;
		this.name = name;
		this.email = email;
		this.website = website;
		this.mobile_no = mobile_no;
		this.city = city;
		this.university = university;
		this.password = password;
	}
	
	public collegesignup() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void execute()
	{
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
			  EntityManager entitymanager = emfactory.createEntityManager( ); 
			  entitymanager.getTransaction( ).begin( ); 
			  
			  college_login cl = new college_login();
			  cl.setC_uname(c_uname);
			  cl.setCity(city);
			  cl.setUniversity(university);
			  cl.setName(name);
			  cl.setMobile_no(mobile_no);
			  cl.setPassword(password);
			  cl.setWebsite(website);
			  cl.setEmail(email);
			  
			  entitymanager.persist( cl ); 
			  entitymanager.getTransaction().commit( ); 
			  
			  entitymanager.close( ); 
			  emfactory.close( ); 
			  
	}

	public boolean logincheck()
	{
		  EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
		  EntityManager entitymanager = emfactory.createEntityManager( ); 
		  entitymanager.getTransaction( ).begin( ); 
		
		  System.out.println(this.c_uname+" "+this.password);
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("logincheckcollege");
		  q.setParameter(1,this.c_uname);
		  q.setParameter(2,this.password);
		//  sl.setUname(this.uname);
		 // sl.setPassword(this.password);
		 
		  entitymanager.getTransaction().commit( ); 
		  List<college_login> lg = q.getResultList();
		  
		  for (college_login a : lg) {
			    System.out.println("Author "
			            + a.getC_uname()
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
		  Query q = entitymanager.createNamedQuery("verifyupdatecollege");
		  q.setParameter(1,un);
		 
		//  sl.setUname(this.uname);
		 // sl.setPassword(this.password);
		  q.executeUpdate();
		 
		  entitymanager.getTransaction().commit( ); 
		//  List<student_login> lg = q.getResultList();
		  
		  	
		  entitymanager.close( );
		  emfactory.close( );
	   
    }
	
	public  List<college_login> indexcollege()
	{
		 EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
		  EntityManager entitymanager = emfactory.createEntityManager( ); 
		  entitymanager.getTransaction( ).begin( ); 
		
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("indexcollegelist");
		  
		  entitymanager.getTransaction().commit( ); 
		  List<college_login> lg = q.getResultList();
		  
		  for (college_login a : lg) {
			    System.out.println("Author "
			            + a.getC_uname()
			            + " "
			            + a.getWebsite());
			}
		
		  entitymanager.close( );
		  emfactory.close( );
		  
		  return lg;
	   
    }
	
	public  List<college_login> collegeprofile(String uname)
	{
		 EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
		  EntityManager entitymanager = emfactory.createEntityManager( ); 
		  entitymanager.getTransaction( ).begin( ); 
		
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("collegeprofile");
		  q.setParameter(1,uname);
		  
		  entitymanager.getTransaction().commit( ); 
		  List<college_login> lg = q.getResultList();
		  
		  for (college_login a : lg) {
			    System.out.println("Author "
			            + a.getC_uname()
			            + " "
			            + a.getWebsite());
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
		  System.out.println("haan bhai");
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("updatenewcollege");
		  q.setParameter(1,this.email);
		  q.setParameter(2,this.password);
		  q.setParameter(3,this.city);
		  q.setParameter(4,this.mobile_no);
		  q.setParameter(5,this.website);
		  q.setParameter(6,this.c_uname);
		  
		  System.out.println("haan bhai");
		 
		//  sl.setUname(this.uname);
		 // sl.setPassword(this.password);
		  q.executeUpdate();
		 
		  entitymanager.getTransaction().commit( ); 
		//  List<student_login> lg = q.getResultList();
		  
		  	
		  entitymanager.close( );
		  emfactory.close( );
	   
    }
	


	
}



