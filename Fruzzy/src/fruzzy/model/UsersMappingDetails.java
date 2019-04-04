package fruzzy.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
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
@Table(name="USER_MAPPING_DETAILS")
public class UsersMappingDetails {
	
	@EmbeddedId
	private UserMappingId userMappingId;

}
