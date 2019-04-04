package fruzzy.database;

public final class SQL {
	
	public static final String CREATE_USER="INSERT INTO PersonalDetails(USERNAME, EMAIL, PASSWORD, GENDER, DATEOFBIRTH, DISPLAYPIC, COVERPIC) VALUES(?, ?, ?, ?, ?, ?, ?)";
	
	public static final String GET_FAID_FOR_USERNAME="select faid from FeedActivityDetails where username=? order by activitytimestamp";
	
	public static final String GET_URL_FROM_MULTIMEDIA="select caption,url from MultiMediaDetails where mid=?";
	
	public static final String GET_CAPTIONS_FROM_TEXT="select caption1,caption2 from TextMediaDetails where tid=?";
	
	public static final String INSERT_INTO_FAID="insert into FeedActivityDetails values(?, ?, ?)";
	
	public static final String INSERT_INTO_MULTIMEDIA="insert into MultiMediaDetails values(?, ?, ?, ?, ?, ?)";
	
	public static final String INSERT_INTO_TEXT="insert into TextMediaDetails values(?, ?, ?)";
	
	public static final String GETPASSWORD="select password from PersonalDetails where username=?";
	
	public static final String GET_DP= "select displaypic, coverpic from PersonalDetails where username=?";

}
