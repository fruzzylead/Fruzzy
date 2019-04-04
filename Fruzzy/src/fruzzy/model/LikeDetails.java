package fruzzy.model;

import java.io.Serializable;

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
@Table(name = "LIKE_DETAILS")
public class LikeDetails implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MEDIA_ID", nullable = false)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private FeedActivityDetails mediaId;
	
	@Column(name = "LIKE_STAMP", columnDefinition="Text", nullable = true)
	private String likeStamp;
}
