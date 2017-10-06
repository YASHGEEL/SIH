package entity;

import javax.persistence.ColumnResult;
import javax.persistence.ConstructorResult;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.SqlResultSetMapping;
import javax.persistence.Table;

@Entity
@Table
@SqlResultSetMapping(
        name = "student_login Mapping",
        classes = @ConstructorResult(
                targetClass = student_login.class,
                columns = {
                    @ColumnResult(name = "uname"),
                    @ColumnResult(name = "first_name"),
                    @ColumnResult(name = "last_name"),
                    @ColumnResult(name = "password"),
                    @ColumnResult(name = "college_name"),
                    @ColumnResult(name = "mobile_no"),
                    @ColumnResult(name = "email")}))
@NamedNativeQueries({ 
	@NamedNativeQuery(name = "logincheck", query = "SELECT a.uname, a.password FROM student_login a where a.uname=? and a.password=? and a.verify='true'", resultClass = student_login.class),
	@NamedNativeQuery(name = "studentprofile", query = "SELECT *  FROM student_login a where a.uname=? ", resultClass = student_login.class),
	@NamedNativeQuery(name = "updatenew", query = "UPDATE student_login a SET a.email=? , a.password=?, a.mobile_no=? WHERE a.uname=?"),
	@NamedNativeQuery(name = "verifyupdate", query = "UPDATE student_login a SET a.verify='true' WHERE a.uname=?")
})
public class student_login {
	
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)  
	private String uname;
	private String first_name,last_name,college_name,mobile_no,password,email;
	
	
	public student_login() {
		super();
		
	}
	public student_login(String uname, String first_name, String last_name, String college_name, String mobile_no,
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
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
