package person.jarvis.entity;

public class Location {
	private String type;
	private String parent_id;
	private String id;
	private String name;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getParent_id() {
		return parent_id;
	}
	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "Location[type=" + type + ", parent_id=" + parent_id + ", id=" + id + ", name=" + name + "]";
	}
}
