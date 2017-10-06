package signup;

import service.studentsignup;

public class studentlogin {
	
	public String uname,password;

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean logincheck()
	{
		System.out.println(uname+" "+password);
		studentsignup sl = new studentsignup(uname, null, null, null, null, password,null);
		boolean f = sl.logincheck();
		return f;
		
	}

}
