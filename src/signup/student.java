package signup;

import mail.Mailer;
import service.studentsignup;

public class student {
	
	String uname,first_name,last_name,college_name,mobile_no,password,email;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getCollege_name() {
		return college_name;
	}

	public void setCollege_name(String college_name) {
		this.college_name = college_name;
	}

	public String getMobile_no() {
		return mobile_no;
	}

	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String pasword) {
		this.password = pasword;
	}
	
	
	
	public static void johri(String s)
	{
		System.out.print(s);
	}
	
	public void updatenew(String name)
	{
		studentsignup sl = new studentsignup(name, null, null, null, mobile_no, password,email);
		sl.updatenew();
	}
	
	public void update()
	{
		System.out.println(uname+" "+password);
		String str[] = {email};
		studentsignup sl = new studentsignup(uname, first_name, last_name, college_name, mobile_no, password,email);
		sl.execute();
		Mailer.sendFromGMail("yashgeel99@gmail.com","geel@324" , str, "Activation Mail For Campus Connect" , "http://localhost:8080/sih/activationStudent.jsp?uname="+uname);
	}

}
