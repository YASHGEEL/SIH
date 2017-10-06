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
        name = "college_login Mapping",
        classes = @ConstructorResult(
                targetClass = college_login.class,
                columns = {
                    @ColumnResult(name = "c_uname"),
                    @ColumnResult(name = "name"),
                    @ColumnResult(name = "city"),
                    @ColumnResult(name = "password"),
                    @ColumnResult(name = "email"),
                    @ColumnResult(name = "mobile_no"),
                    @ColumnResult(name = "university"),
                    @ColumnResult(name = "website")}))
@NamedNativeQueries({
@NamedNativeQuery(name = "logincheckcollege", query = "SELECT a.c_uname, a.password FROM college_login a where a.c_uname=? and a.password=? and a.verify='true'", resultClass = college_login.class),
@NamedNativeQuery(name = "indexcollegelist", query = "SELECT * FROM college_login a ", resultClass = college_login.class),
@NamedNativeQuery(name = "updatenewcollege", query = "UPDATE college_login a SET a.email=? , a.password=?, a.city=?, a.mobile_no=?, a.website=? WHERE a.c_uname=?"),
@NamedNativeQuery(name = "collegeprofile", query = "SELECT *  FROM college_login a where a.c_uname=? ", resultClass = college_login.class),
@NamedNativeQuery(name = "verifyupdatecollege", query = "UPDATE college_login a SET a.verify='true' WHERE a.c_uname=?")
})
public class college_login {
	
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	
	private String c_uname;
	private String name,email,website,mobile_no,city,university,password;
	public college_login() {
		super();
		// TODO Auto-generated constructor stub
	}
	public college_login(String c_uname, String name, String email, String website, String mobile_no, String city,
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
	
	

}
