package models;

public class ItemModel {
	private int itemId;
	private ProductModel product;
	private int quantity;
	private float price;
	
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public ProductModel getProduct() {
		return product;
	}
	public void setProduct(ProductModel product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public ItemModel(int itemId, ProductModel product, int quantity, float price) {
		super();
		this.itemId = itemId;
		this.product = product;
		this.quantity = quantity;
		this.price = price;
	}
	public ItemModel(ProductModel product, int quantity, float price) {
		super();
		
		this.product = product;
		this.quantity = quantity;
		this.price = price;
	}
	public ItemModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ItemModel [itemId=" + itemId + ", product=" + product + ", quantity=" + quantity + ", price=" + price
				+ "]";
	}
	
	
}
