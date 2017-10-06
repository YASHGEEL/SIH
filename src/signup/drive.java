package signup;

import mail.Mailer;
import service.collegesignup;
import service.drivemanager;

public class drive {

	private String c_uname,c_name,college,city,total,date;
	public static String name,nn;

	public String getC_uname() {
		return c_uname;
	}

	public void setC_uname(String c_uname) {
		this.c_uname = c_uname;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	public void update()
	{
		setC_uname(name);
		setC_name(nn);
		drivemanager d= new drivemanager(c_uname, c_name, college, city, total, date);
	    d.execute();
	    
	}
	
}
