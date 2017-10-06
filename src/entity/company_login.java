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
        name = "company_login Mapping",
        classes = @ConstructorResult(
                targetClass = company_login.class,
                columns = {
                    @ColumnResult(name = "c_uname"),
                    @ColumnResult(name = "name"),
                    @ColumnResult(name = "city"),
                    @ColumnResult(name = "password"),
                    @ColumnResult(name = "email"),
                    @ColumnResult(name = "mobile_no"),
                    @ColumnResult(name = "iso_no"),
                    @ColumnResult(name = "website")}))
@NamedNativeQueries({
@NamedNativeQuery(name = "logincheckcompany", query = "SELECT a.c_uname, a.password FROM company_login a where a.c_uname=? and a.password=? and a.verify='true'", resultClass = company_login.class),
@NamedNativeQuery(name = "indexcompanylist", query = "SELECT *  FROM company_login a ", resultClass = company_login.class),
@NamedNativeQuery(name = "updatenewcompany", query = "UPDATE company_login a SET a.email=? , a.password=?, a.city=?, a.mobile_no=?, a.website=? WHERE a.c_uname=?"),
@NamedNativeQuery(name = "companyprofile", query = "SELECT *  FROM company_login a where a.c_uname=? ", resultClass = company_login.class),
@NamedNativeQuery(name = "verifyupdatecompany", query = "UPDATE company_login a SET a.verify='true' WHERE a.c_uname=?")
})
public class company_login {
	
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)  
	
	private String c_uname;
	private String name,email,mobile_no,website,iso_no,city,password;

	public company_login() {
		super();
		// TODO Auto-generated constructor stub
	}

	public company_login(String c_uname, String name, String email, String mobile_no, String website, String iso_no,
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
	

}
