package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.FoodshopDao;
import javafx.scene.control.Alert;
import service.FoodShopService;
import service.FoodShopServiceimpl;
import vo.FoodshopVO;

/**
 * Servlet implementation class Insertfoodshop
 */
@WebServlet("/insertfoodshop.do")
@MultipartConfig(maxFileSize = 1024*1024*5)
public class Insertfoodshop extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8"); 
		PrintWriter out = response.getWriter();
        
        
        System.out.println("/insertfoodshop.do 요청 처리");
	
        FoodshopDao dao = new FoodshopDao();
        FoodShopService service = new FoodShopServiceimpl(dao);
        
        FoodshopVO vo = new FoodshopVO();
        
        vo.setFname(request.getParameter("fname"));
        vo.setAddress(request.getParameter("address"));
        vo.setLatitude(request.getParameter("latitude"));
        vo.setLongitude(request.getParameter("longitude"));
        vo.setFoodstyle(request.getParameter("foodstyle"));
        vo.setImage(request.getParameter("image"));
        vo.setImage_menu(request.getParameter("image_menu"));
        vo.setLoc(request.getParameter("loc"));
        vo.setDiscount(Integer.parseInt(request.getParameter("discount")));
        vo.setHoliday(request.getParameter("holiday"));
        vo.setOctime(request.getParameter("octime"));
        vo.setTel(request.getParameter("tel"));
        
        try {
        	service.addFoodshop(vo);
        	out.println("<script>alert('등록이 완료 됬습니다.'); location.href='main.html';</script>");
        	out.flush();
//        	response.sendRedirect("main.html");
//        	System.out.println("등록이 완료");
		} catch (Exception e) {
			out.println("<script>alert('등록에  실패 했습니다.'); location.href='main.html';</script>");
			// TODO: handle exception
		}
        
        
	}

}
