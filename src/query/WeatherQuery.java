package query;

import util.QrCodeImg;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WeatherQuery
 */
public class WeatherQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public WeatherQuery() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String city = request.getParameter("city");
		String c = city.trim();
		List<String> list = cn.com.WebXml.WeatherQuery.query(c);
		request.setAttribute("list",list);
		request.getRequestDispatcher("index.jsp").forward(request,response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
