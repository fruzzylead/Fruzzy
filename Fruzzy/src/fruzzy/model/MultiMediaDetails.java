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
@Table(name = "MULTIMEDIA_DETAILS")
public class MultiMediaDetails implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MEDIA_ID", nullable = false)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private FeedActivityDetails mediaId;
	@Column(name = "MEDIA_TYPE", nullable = false)
	private String mediaType;
	@Column(name = "MEDIA_EXTENSION", nullable = false)
	private String mediaExt;
	@Column(name = "CAPTION", length = 65535, columnDefinition="Text", nullable = true)
//	@Type(type="text")
	private String caption;
	@Column(name = "MEDIA_URL", length = 400, nullable = false)
	private String url;
	@Column(name= "MEDIA_SIZE", nullable = false)
	private Double size;
}
