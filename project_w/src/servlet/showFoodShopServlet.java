package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FoodshopDao;
import service.FoodShopService;
import service.FoodShopServiceimpl;
import vo.FoodshopVO;

@WebServlet("/showFoodShop.do")
public class showFoodShopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		System.out.println("/showFoodShop.do");
		String fname = "대낚식당";
		FoodshopDao dao = new FoodshopDao();
		FoodShopService service = new FoodShopServiceimpl(dao);
		List<FoodshopVO> list = service.showfoodshop(fname);
		
		request.setAttribute("showFoodShop", list); 
		String view  = "/foodShop.jsp";
		
		getServletContext().getRequestDispatcher(view).forward(request, response);//view페이지로 제어권을 위임한다.
		
		
	}

}
