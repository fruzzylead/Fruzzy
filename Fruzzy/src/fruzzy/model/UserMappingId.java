package fruzzy.model;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

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

@Embeddable
public class UserMappingId implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="USER_ID")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private  PersonalDetails userId;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="FOLLOWER_ID")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private PersonalDetails followerId;
	
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof UserMappingId )) return false;
        UserMappingId  that = (UserMappingId ) o;
        return Objects.equals(getUserId(), that.getUserId()) &&
                Objects.equals(getFollowerId(), that.getFollowerId());
    }
 
    @Override
    public int hashCode() {
        return Objects.hash(getUserId(), getFollowerId());
    }

}
