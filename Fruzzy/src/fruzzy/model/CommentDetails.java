package fruzzy.model;

import java.io.Serializable;
import java.sql.Date;

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
@Table(name = "COMMENT_DETAILS")
public class CommentDetails implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "COMMENT_ID", nullable = false)
	private String commentId;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MEDIA_ID", nullable = false)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private FeedActivityDetails mediaId;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USER_ID", nullable = false)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private PersonalDetails userId;
	@Column(name = "COMMENT", length = 65535, columnDefinition = "Text", nullable = true)
	private String comment;
	@Column(name = "COMMENT_TIMESTAMP", nullable = false)
	private Date commentTimestamp;
}
