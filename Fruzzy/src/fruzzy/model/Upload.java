package fruzzy.model;

public class Upload {
	
	private String id;
	private int type;		//0 for text 1 for media
	private String caption1;
	private String caption2;
	private String url;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getCaption1() {
		return caption1;
	}
	public void setCaption1(String caption1) {
		this.caption1 = caption1;
	}
	public String getCaption2() {
		return caption2;
	}
	public void setCaption2(String caption2) {
		this.caption2 = caption2;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	

}
