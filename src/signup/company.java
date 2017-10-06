package signup;

import mail.Mailer;
import service.companysignup;


public class company {
	
	String c_uname,name,email,mobile_no,website,iso_no,city,password;

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

	public String getMobile_no() {
		return mobile_no;
	}

	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getIso_no() {
		return iso_no;
	}

	public void setIso_no(String iso_no) {
		this.iso_no = iso_no;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public void updatenew(String name)
	{
		companysignup cl= new companysignup(name, null,email, mobile_no, website, null, city, password);
		cl.updatenew();
	}
	
	public void update()
	{
		System.out.println(c_uname+" "+name+" "+ email);
		String str[] = {email};
		companysignup cl= new companysignup(c_uname, name,email, mobile_no, website, iso_no, city, password);
		cl.execute();
		Mailer.sendFromGMail("yashgeel99@gmail.com","geel@324" , str, "Activation Mail For Campus Connect" , "http://localhost:8080/sih/activationCompany.jsp?uname="+c_uname);
	}


}
