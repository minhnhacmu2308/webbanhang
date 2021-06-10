package Dao;

import java.sql.Connection;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import models.ItemModel;
import models.OrderModel;
import models.UserModel;
import utils.ConnectToDatabase;

public class OrderDao extends AbstractDao{
	Connection conn = ConnectToDatabase.getConnect();
	public OrderDao() {
		super();
	}
	
	 public boolean addOrder(OrderModel obj) {
			int result = 0;
			
			String sql = "insert into orders(customerId,item,status,phoneNumber,address,methodDelivery,paymentDelivery,total) values(?,?,?,?,?,?,?,?)";
			
			try {
				String listItem = obj.getItems().toString();
				ps = conn.prepareStatement(sql);
				ps.setInt(1, obj.getCustomerId());
				ps.setString(2,listItem);
				ps.setBoolean(3, false);
				ps.setString(4,obj.getPhoneNumber());
				ps.setString(5,obj.getAddress());
				ps.setInt(6, obj.getMethodDelivery());
				ps.setInt(7, obj.getPaymentdelivery());
				ps.setFloat(8, 120);
				result = ps.executeUpdate();
				
				if(result==1) {
					return true;
				}
			
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return false;
		}
	public static void main(String[] args) {
		OrderDao or = new OrderDao();
		List<ItemModel> list = new ArrayList<>();
		
	}
}
