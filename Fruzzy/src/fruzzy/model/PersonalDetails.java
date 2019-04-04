package fruzzy.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

@Entity
@Table(name="PERSONAL_DETAILS")
public class PersonalDetails {
	
	@Id
	@Column(name="USER_ID", unique=true, nullable=false)
	private String userId;
	@Column(name="USER_NAME", unique=true, nullable=false, length=100)
	private String username;
	@Column(name="USER_EMAIL", unique=true, nullable=false, length=150)
	private String email;
	@Column(name="USER_PASSWORD", nullable=false, length=150)
	private String password;
	@Column(name="USER_GENDER", nullable=false)
	private String gender;
	@Column(name="USER_DOB", nullable=false)
	private Date dob;
	@Column(name="USER_DP", nullable=true)
	private String displayPic;
	@Column(name="USER_CP", nullable=true)
	private String coverPic;
	@Column(name="USER_UPLOAD_COUNT", nullable=true)
	private int uploadCount;
	
}
