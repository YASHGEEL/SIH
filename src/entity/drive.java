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
        name = "drive Mapping",
        classes = @ConstructorResult(
                targetClass = drive.class,
                columns = {
                    @ColumnResult(name = "c_uname"),
                    @ColumnResult(name = "c_name"),
                    @ColumnResult(name = "college"),
                    @ColumnResult(name = "city"),
                    @ColumnResult(name = "total"),
                    @ColumnResult(name = "date")}))
@NamedNativeQueries({
@NamedNativeQuery(name = "drivedetail", query = "SELECT *FROM drive a where a.c_uname=? ", resultClass = drive.class),
@NamedNativeQuery(name = "driveddd", query = "SELECT *FROM drive a where a.college=? ", resultClass = drive.class),
@NamedNativeQuery(name = "drived", query = "SELECT *FROM drive a ", resultClass = drive.class)
})


public class drive 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; 
	private String c_uname;
	private String c_name,college,city,total,date;
	public drive() {
		super();
		// TODO Auto-generated constructor stub
	}
	public drive(String c_uname, String c_name, String college, String city, String total, String date) {
		super();
		this.c_uname = c_uname;
		this.c_name = c_name;
		this.college = college;
		this.city = city;
		this.total = total;
		this.date = date;
	}
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
	

}
