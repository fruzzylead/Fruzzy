package fruzzy.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "FEED_ACTIVITY_DETAILS")
public class FeedActivityDetails implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "FEED_ACTIVITY_ID", unique = true, nullable = false)
	private String faId;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USER_ID", nullable = false)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private PersonalDetails userId;
	@Column(name = "ACTIVITY_TIMESTAMP", nullable = false)
	private Date activityTimestamp;
}
