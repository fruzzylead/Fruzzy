package fruzzy.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

@Entity
@Table(name="APPLICATION_DETAILS")
public class ApplicationDetails implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="USER_ID", unique=true, nullable=false)
	@OnDelete(action=OnDeleteAction.CASCADE)
	private PersonalDetails userId;
	@Column(name="LAST_VISIT", nullable=false)
	private Date lastVisit;
}
