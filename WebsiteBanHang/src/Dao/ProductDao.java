package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.CategoryModel;
import models.ItemModel;
import models.ProductModel;
import utils.ConnectToDatabase;

public class ProductDao extends AbstractDao{

 Connection conn = ConnectToDatabase.getConnect();
  

  public List<ProductModel> getAllProduct() {
    List<ProductModel> list = new ArrayList<>();
    String sql = "select * from product limit 8";

    try {
      ps = conn.prepareStatement(sql);
      rs = ps.executeQuery();
      while (rs.next()) {
        list.add(
          new ProductModel(
            rs.getInt(1),
            rs.getString(2),
            rs.getString(3),
            rs.getString(4),
            rs.getInt(5),
            rs.getFloat(7),
            rs.getInt(8),
            rs.getInt(9)
          )
        );
      }
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }

    return list;
  }

  public ProductModel getProductById(String id) {
    String sql = "select * from product where product_id = ? ";
    try {
      ps = conn.prepareStatement(sql);
      ps.setString(1, id);
      rs = ps.executeQuery();
      while (rs.next()) {
        return new ProductModel(
          rs.getInt(1),
          rs.getString(2),
          rs.getString(3),
          rs.getString(4),
          rs.getInt(5),
          rs.getFloat(7),
          rs.getInt(8),
          rs.getInt(9)
        );
      }
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return null;
  }

  public List<ProductModel> getProductRecently() {
    List<ProductModel> list = new ArrayList<>();
    String sql = "select * from product limit 3";

    try {
      ps = conn.prepareStatement(sql);
      rs = ps.executeQuery();
      while (rs.next()) {
        list.add(
          new ProductModel(
            rs.getInt(1),
            rs.getString(2),
            rs.getString(3),
            rs.getString(4),
            rs.getInt(5),
            rs.getFloat(7),
            rs.getInt(8),
            rs.getInt(9)
          )
        );
      }
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }

    return list;
  }
  public List<ProductModel> getProductByNumber(int number) {
	    List<ProductModel> list = new ArrayList<>();
	    String sql = "select * from product limit ?";

	    try {
	      ps = conn.prepareStatement(sql);
	      ps.setInt(1, number);
	      rs = ps.executeQuery();
	      while (rs.next()) {
	        list.add(
	          new ProductModel(
	            rs.getInt(1),
	            rs.getString(2),
	            rs.getString(3),
	            rs.getString(4),
	            rs.getInt(5),
	            rs.getFloat(7),
	            rs.getInt(8),
	            rs.getInt(9)
	          )
	        );
	      }
	    } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }

	    return list;
}
  public List<ProductModel> getProductRecommend() {
    List<ProductModel> list = new ArrayList<>();
    String sql = "select * from product order by numberView DESC limit 3";

    try {
      ps = conn.prepareStatement(sql);
      rs = ps.executeQuery();
      while (rs.next()) {
        list.add(
          new ProductModel(
            rs.getInt(1),
            rs.getString(2),
            rs.getString(3),
            rs.getString(4),
            rs.getInt(5),
            rs.getFloat(7),
            rs.getInt(8),
            rs.getInt(9)
          )
        );
      }
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }

    return list;
  }
  public int getNumberPage() {
	  String sql = "select count(*) from product";
	  
	  try {
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next()) {
			int total = rs.getInt(1);
			int count = 0;
			count = total/12;
			if(total % 12 != 0) {
				count++;
			}
			return count;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return 0;
  }
  
  public List<ProductModel> pagingproduct(int index){
	  List<ProductModel> list = new ArrayList<>();
	  String sql = "select * from `product` limit ?,?";
	  try {
		ps = conn.prepareStatement(sql);
		ps.setInt(1, (index-1)*12);
		ps.setInt(2, 12);
		rs = ps.executeQuery();
		while(rs.next()) {
			list.add(
			          new ProductModel(
			            rs.getInt(1),
			            rs.getString(2),
			            rs.getString(3),
			            rs.getString(4),
			            rs.getInt(5),
			            rs.getFloat(7),
			            rs.getInt(8),
			            rs.getInt(9)
			          )
			        );
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return list;
  }
  public ProductModel getProdcutById(int id) {
	  
	  String sql = "select * from product where product_id = ?";
	  
	  try {
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		while(rs.next()) {
			return new ProductModel(
		            rs.getInt(1),
		            rs.getString(2),
		            rs.getString(3),
		            rs.getString(4),
		            rs.getInt(5),
		            rs.getFloat(7),
		            rs.getInt(8),
		            rs.getInt(9)
		          );
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	  return null;
  }
  public boolean addOrder(int customerId,List<ItemModel> list,boolean status) {
		int result = 0;
		
		String sql = "insert into orders(customerId,item,status) values(?,?,?)";
		
		try {
			String item = list.toString();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, customerId);
			ps.setString(2,item);
			ps.setBoolean(3, false);
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
  public int getNumberViewCurrent(int productId) {
	  String sql = "select numberView from product where product_id = ?";
	  
	  try {
		ps = conn.prepareStatement(sql);
		ps.setInt(1, productId);
		rs = ps.executeQuery();
		while(rs.next()) {
			return rs.getInt(1);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	  return 0;
  }
  public boolean addView(int productId) {
	  
	  String sql = "update product set numberView = ? where product_id = ?";
	  
	  int numberViewCurrent = getNumberViewCurrent(productId);
	  int result = 0;
	  try {
		ps = conn.prepareStatement(sql);
		ps.setInt(1, (numberViewCurrent+1));
		ps.setInt(2, productId);
		result = ps.executeUpdate();
		while(result==1) {
			return true;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	  return false;
  }
  public static void main(String[] args) {
    ProductDao pp = new ProductDao();
    ProductModel pd = pp.getProductById("27");
    List<ProductModel> rs = pp.getProductByNumber(20);
    System.out.println(rs.size());	
    System.out.println(pp.getNumberPage());
    System.out.println(pd);
    List<ProductModel> rs1 = pp.pagingproduct(2);
    for(ProductModel s:rs1) {
    	System.out.println(s);
    }
	
	 List<ItemModel> list = new ArrayList<>(); boolean a = pp.addOrder(2, list,
	 false); if(a==true) { System.out.println("true"); }else {
	  System.out.println("false"); }
	 
    System.out.println(pp.addView(1));
  }
}
