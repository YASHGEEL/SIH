package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entity.company_login;

public class companysignup {

	
	private String c_uname,name,email,mobile_no,website,iso_no,city,password;

	public companysignup(String c_uname, String name, String email, String mobile_no, String website, String iso_no,
			String city, String password) {
		super();
		this.c_uname = c_uname;
		this.name = name;
		this.email = email;
		this.mobile_no = mobile_no;
		this.website = website;
		this.iso_no = iso_no;
		this.city = city;
		this.password = password;
	}
	
	public companysignup() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void execute()
	{
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
			  EntityManager entitymanager = emfactory.createEntityManager( ); 
			  entitymanager.getTransaction( ).begin( ); 
			  
			  company_login cl = new company_login();
			  cl.setC_uname(c_uname);
			  cl.setCity(city);
			  cl.setIso_no(iso_no);
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
		  Query q = entitymanager.createNamedQuery("logincheckcompany");
		  q.setParameter(1,this.c_uname);
		  q.setParameter(2,this.password);
		//  sl.setUname(this.uname);
		 // sl.setPassword(this.password);
		 
		  entitymanager.getTransaction().commit( ); 
		  List<company_login> lg = q.getResultList();
		  
		  for (company_login a : lg) {
			    System.out.println("Author "
			            + a.getC_uname()
			            + " "
			            + a.getPassword());
			}
		  
		//  companysignup.indexcompany();
		
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
		  Query q = entitymanager.createNamedQuery("verifyupdatecompany");
		  q.setParameter(1,un);
		 
		//  sl.setUname(this.uname);
		 // sl.setPassword(this.password);
		  q.executeUpdate();
		 
		  entitymanager.getTransaction().commit( ); 
		//  List<student_login> lg = q.getResultList();
		  
		  	
		  entitymanager.close( );
		  emfactory.close( );
	   
    }
	
	public  List<company_login> indexcompany()
	{
		 EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
		  EntityManager entitymanager = emfactory.createEntityManager( ); 
		  entitymanager.getTransaction( ).begin( ); 
		
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("indexcompanylist");
		  
		  entitymanager.getTransaction().commit( ); 
		  List<company_login> lg = q.getResultList();
		  
		  for (company_login a : lg) {
			    System.out.println("Author "
			            + a.getC_uname()
			            + " "
			            + a.getWebsite());
			}
		
		  entitymanager.close( );
		  emfactory.close( );
		  
		  return lg;
	   
    }
	
	public  List<company_login> companyprofile(String uname)
	{
		 EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "sih" ); 
		  EntityManager entitymanager = emfactory.createEntityManager( ); 
		  entitymanager.getTransaction( ).begin( ); 
		
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("companyprofile");
		  q.setParameter(1,uname);
		  
		  entitymanager.getTransaction().commit( ); 
		  List<company_login> lg = q.getResultList();
		  
		  for (company_login a : lg) {
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
		
		  
		  
	//	  student_login sl = new student_login();
		  Query q = entitymanager.createNamedQuery("updatenewcompany");
		  q.setParameter(1,this.email);
		  q.setParameter(2,this.password);
		  q.setParameter(3,this.city);
		  q.setParameter(4,this.mobile_no);
		  q.setParameter(5,this.website);
		  q.setParameter(6,this.c_uname);
		 
		//  sl.setUname(this.uname);
		 // sl.setPassword(this.password);
		  q.executeUpdate();
		 
		  entitymanager.getTransaction().commit( ); 
		//  List<student_login> lg = q.getResultList();
		  
		  	
		  entitymanager.close( );
		  emfactory.close( );
	   
    }

   	
}
