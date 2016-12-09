package person.jarvis.entity;

import java.util.Date;

import person.jarvis.utils.CommonUtils;

public class Enrollee {
	private Integer id;
	private String guid;
	private String name;
	private String province;
	private String city;
	private String county;
	private String town;
	private String village;
	private String address;
	private String tel;
	private String school;
	private Date time;

	@Override
	public String toString() {
		return "Enrollee[id=" + id + ", guid=" + guid + ", name=" + name + ", province=" + province + ", city=" + city + ", county=" + county
				+ ", town=" + town + ", village=" + village + ", address=" + address + ", tel=" + tel + ", school" + school + ", time=" + time + "]";
	}
	
	public boolean isComplete() {
		return CommonUtils.isEmpty(name) ? false : CommonUtils.isEmpty(province) ? false : CommonUtils.isEmpty(city) ? false : CommonUtils
				.isEmpty(county) ? false : CommonUtils.isEmpty(address) ? false : CommonUtils.isEmpty(tel) ? false
				: CommonUtils.isEmpty(school) ? false : true;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGuid() {
		return guid;
	}

	public void setGuid(String guid) {
		this.guid = guid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getTown() {
		return town;
	}

	public void setTown(String town) {
		this.town = town;
	}

	public String getVillage() {
		return village;
	}

	public void setVillage(String village) {
		this.village = village;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}
}
