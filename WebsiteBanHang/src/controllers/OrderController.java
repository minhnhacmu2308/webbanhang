package controllers;

import java.io.IOException;
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
import models.OrderModel;
import models.ProductModel;
import models.UserModel;

/**
 * Servlet implementation class OrderController
 */
@WebServlet("/order")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductDao daoP = new ProductDao();
		
		List<ProductModel> listRe = daoP.getProductRecommend();
		request.setAttribute("listRe", listRe);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/basket.jsp");
		dispatcher.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		OrderModel order = (OrderModel) session.getAttribute("order");
		
		OrderDao daoO = new OrderDao();
		
		boolean resultOrder = daoO.addOrder(order);
		
		if(resultOrder == true) {
			session.removeAttribute("order");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/orderSuccess.jsp");
			dispatcher.forward(request, response);
		}
	}

}
