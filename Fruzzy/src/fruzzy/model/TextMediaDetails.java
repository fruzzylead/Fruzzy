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
@Table(name="TEXTMEDIA_DETAILS")
public class TextMediaDetails implements Serializable{
	
	private static final long serialVersionUID = 8457724175650857717L;
	@Id
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "TEXT_ID", nullable = false)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private FeedActivityDetails textId;
	@Column(name = "CAPTION1", length = 65535, columnDefinition="Text", nullable = true)
//	@Type(type="text")
	private String Caption1;
	@Column(name = "CAPTION2", length = 65535, columnDefinition="Text", nullable = true)
//	@Type(type="text")
	private String Caption2;

}
