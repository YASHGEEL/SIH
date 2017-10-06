package signup;

import service.collegesignup;

public class collegelogin {
	
	public String c_uname,password;

	public String getC_uname() {
		return c_uname;
	}

	public void setC_uname(String c_uname) {
		this.c_uname = c_uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean logincheck()
	{
		System.out.println(c_uname+" "+password);
		collegesignup cl= new collegesignup(c_uname,null, null, null, null, null, null, password);
		
		boolean f = cl.logincheck();
		return f;
		
	}

}
