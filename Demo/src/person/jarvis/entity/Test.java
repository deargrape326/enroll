package person.jarvis.entity;

public class Test {
	private int id;
	private String name;
	public Test(){
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

	@Override
	public String toString() {
		return "Test{id=" + id + ", name=" + name + "}";
	}
}
