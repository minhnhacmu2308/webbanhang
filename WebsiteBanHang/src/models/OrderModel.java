package models;

import java.util.List;

public class OrderModel {
	
	private int orderId;
	private int customerId;
	private List<ItemModel> items;
	private boolean status;
	private String phoneNumber;
	private String address;
	private int methodDelivery;
	private int paymentdelivery;
	private float total;
	
	

	public OrderModel(int orderId, int customerId, List<ItemModel> items, boolean status, String phoneNumber,
			String address, int methodDelivery, int paymentdelivery, float total) {
		super();
		this.orderId = orderId;
		this.customerId = customerId;
		this.items = items;
		this.status = status;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.methodDelivery = methodDelivery;
		this.paymentdelivery = paymentdelivery;
		this.total = total;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getMethodDelivery() {
		return methodDelivery;
	}
	public void setMethodDelivery(int methodDelivery) {
		this.methodDelivery = methodDelivery;
	}
	public int getPaymentdelivery() {
		return paymentdelivery;
	}
	public void setPaymentdelivery(int paymentdelivery) {
		this.paymentdelivery = paymentdelivery;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public List<ItemModel> getItems() {
		return items;
	}
	public void setItems(List<ItemModel> items) {
		this.items = items;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
	public OrderModel(int customerId, List<ItemModel> items, boolean status) {
		super();
		this.customerId = customerId;
		this.items = items;
		this.status = status;
	}
	public OrderModel(int orderId, int customerId, List<ItemModel> items, boolean status) {
		super();
		this.orderId = orderId;
		this.customerId = customerId;
		this.items = items;
		this.status = status;
	}
	
	public OrderModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "OrderModel [orderId=" + orderId + ", customerId=" + customerId + ", items=" + items + ", status="
				+ status + ", phoneNumber=" + phoneNumber + ", address=" + address + ", methodDelivery="
				+ methodDelivery + ", paymentdelivery=" + paymentdelivery + ", total=" + total + "]";
	}
	

	
	
	
	
}
