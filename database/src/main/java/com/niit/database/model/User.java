package com.niit.database.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.stereotype.Component;

@Entity
@Table(name="user")
@Component
public class User {
	
	@Id
	@Column(name="id")
	private String id;
	private String password;
	@Column(name="admin")
	private boolean isAdmin;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isAdmin() {
		return isAdmin;
	}
	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	public class FileUpload{
		
		MultipartFile file;

		public MultipartFile getFile() {
			return file;
		}

		public void setFile(MultipartFile file) {
			this.file = file;
		}
		

	}
	

}



