package kozossegi.bean;

public class KozossegiProfileNameBean {
	int id;
	String name;
	public KozossegiProfileNameBean(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public KozossegiProfileNameBean(KozossegiProfileMiniatureBean b){
		super();
		this.id=b.getId();
		this.name=b.getName();
	}
	public KozossegiProfileNameBean(KozossegiProfileBean profile) {
		this.id=profile.getId();
		this.name=profile.getName();
	}
	
	public KozossegiProfileNameBean(KozossegiUserBean profile) {
		this.id=profile.getId();
		this.name=profile.getName();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}	
	public String toString(){
		return name;
		
	}
}
