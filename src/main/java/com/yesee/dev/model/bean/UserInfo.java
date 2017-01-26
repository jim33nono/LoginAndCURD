package com.yesee.dev.model.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

@Table(name = "USERINFO")
@Entity
public class UserInfo implements Serializable {

	public UserInfo() {}

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Size(min=3, max=30, message = "Min size 3 and max size 30")
	@Column(name = "ACCOUNT")
	private String account;
	
	@NotBlank(message = "Password blank")
	@Column(name = "PASSWORD")
	private String password;

	@Column(name = "USERNAME")
	private String username;
	
	@Column(name = "COUNTRY")
	private String country;

	@Column(name = "PHONE")
	private String phone;

	@Column(name = "DATE_TIME")
	private Date dateTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getDateTime() {
		return dateTime;
	}

	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}

	@Override
	public String toString() {
		return "Userinfo [id=" + id + ", country=" + country + ", dateTime=" + dateTime + "]";
	}

}
