package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.OrderDao;
import Dao.ProductDao;
import models.ItemModel;
import models.OrderModel;
import models.ProductModel;
import models.UserModel;

/**
 * Servlet implementation class AddCartController
 */
@WebServlet("/addcart")
public class AddCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int quantity = 1;
		int productId;
		
		ProductDao daoP = new ProductDao();
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("quantity"));
		if(request.getParameter("productId")!=null) {
			productId = Integer.parseInt(request.getParameter("productId"));
			ProductModel product = daoP.getProdcutById(productId);
			
			HttpSession session = request.getSession();
			if(session.getAttribute("order")==null) {
				UserModel user = (UserModel)session.getAttribute("user");
				OrderModel  order = new  OrderModel();
				List<ItemModel> listItem = new ArrayList<>();
				ItemModel item = new ItemModel(product,quantity,product.getProductPrice());
				listItem.add(item);
				order.setItems(listItem);
				order.setCustomerId(user.getUserId());
				session.setAttribute("order", order);
			
				
			}else {
				UserModel user = (UserModel)session.getAttribute("user");
				OrderModel order = (OrderModel) session.getAttribute("order");
				List<ItemModel> listItem = order.getItems();
				boolean check = false;
				for(ItemModel item:listItem) {
				
						if(item.getProduct().getProductId()==product.getProductId()) {
							item.setQuantity(item.getQuantity()+quantity);
							check = true;
						}
					
					
				}
				if(check == false ){
					ItemModel item = new ItemModel(product,quantity,product.getProductPrice());
					listItem.add(item);
				}
				
				order.setCustomerId(user.getUserId());
				order.setItems(listItem);
				session.setAttribute("order", order);
			
			}
			
		}
		
		List<ProductModel> listRe = daoP.getProductRecommend();
		request.setAttribute("listRe", listRe);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/basket.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int quantity = 1;
		int productId;
		
		ProductDao daoP = new ProductDao();
		OrderDao daoO = new OrderDao();
		String idEdit = request.getParameter("id");
		String quantityEdit = request.getParameter("quantity");
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("quantity"));
		if(request.getParameter("productId")!=null) {
			productId = Integer.parseInt(request.getParameter("productId"));
			ProductModel product = daoP.getProdcutById(productId);
			
			HttpSession session = request.getSession();
			if(session.getAttribute("order")==null) {
				UserModel user = (UserModel)session.getAttribute("user");
				OrderModel  order = new  OrderModel();
				List<ItemModel> listItem = new ArrayList<>();
				ItemModel item = new ItemModel(product,quantity,product.getProductPrice());
				listItem.add(item);
				
				order.setItems(listItem);
				order.setCustomerId(user.getUserId());
				session.setAttribute("order", order);
			
				
			}else {
				UserModel user = (UserModel)session.getAttribute("user");
				OrderModel order = (OrderModel) session.getAttribute("order");
				List<ItemModel> listItem = order.getItems();
				boolean check = false;
				for(ItemModel item:listItem) {
					if(idEdit==null && quantityEdit==null) {
						if(item.getProduct().getProductId()==product.getProductId()) {
							item.setQuantity(item.getQuantity()+quantity);
							check = true;
						}
					}else {
						if(item.getProduct().getProductId()==Integer.parseInt(idEdit)) {
							item.setQuantity(Integer.parseInt(quantityEdit));
							check = true;
						}
					}
					
				}
				if(check == false ){
					ItemModel item = new ItemModel(product,quantity,product.getProductPrice());
					listItem.add(item);
				}
				
				order.setCustomerId(user.getUserId());
				order.setItems(listItem);
				session.setAttribute("order", order);
			
			}
			
		}
		
		List<ProductModel> listRe = daoP.getProductRecommend();
		request.setAttribute("listRe", listRe);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/basket.jsp");
		dispatcher.forward(request, response);
		
	}

}
