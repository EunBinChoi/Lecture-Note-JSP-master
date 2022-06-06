package me.servlet.login;

public class Member {
	private String id, pwd, name, email, phone;

	public Member(String id, String pwd, String name, String email, String phone) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.phone = phone;
	}
	
	public String getId() { return id; }
	public void setId(String id) { this.id = id; }

	public String getPwd() { return pwd; }
	public void setPwd(String pwd) { this.pwd = pwd; }

	public String getName() { return name; }
	public void setName(String name) { this.name = name; }

	public String getEmail() { return email; }
	public void setEmail(String email) { this.email = email; }

	public String getPhone() { return phone; }
	public void setPhone(String phone) { this.phone = phone; }
}
