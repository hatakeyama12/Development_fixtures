package dto;

public class Development_fixtures {
	private int id;
	private String name;
	private String content;
	private int quantity;
	public Development_fixtures(int id, String name, String content, int quantity) {
		super();
		this.id = id;
		this.name = name;
		this.content = content;
		this.quantity = quantity;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
