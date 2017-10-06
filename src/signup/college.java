package signup;

import mail.Mailer;
import service.collegesignup;
import service.companysignup;

public class college 
{
	
	String c_uname,name,email,website,mobile_no,city,university,password;

	public String getC_uname() {
		return c_uname;
	}

	public void setC_uname(String c_uname) {
		this.c_uname = c_uname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getMobile_no() {
		return mobile_no;
	}

	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
   
	public void updatenew(String name)
	{
		collegesignup cl= new collegesignup(name, null, email, website, mobile_no, city, null, password);
		cl.updatenew();
	}
	
	public void update()
	{
		System.out.println(c_uname+" "+name+" "+ email);
		String str[] = {email};
		collegesignup cl= new collegesignup(c_uname, name, email, website, mobile_no, city, university, password);
	    cl.execute();
	    Mailer.sendFromGMail("yashgeel99@gmail.com","geel@324" , str, "Activation Mail For Campus Connect" , "http://localhost:8080/sih/activationCollege.jsp?uname="+c_uname);
	}

}
