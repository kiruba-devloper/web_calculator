package calculatorModule;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Calculator
 */
@WebServlet("/calculator")
public class Calculator extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1 = Integer.parseInt(request.getParameter("value1"));
		int num2 = Integer.parseInt(request.getParameter("value1"));
		int result =0;
		String btn= request.getParameter("btn");
		switch(btn) {
		case "add": result=(num1 + num2);
					break;
		case "sub": result=(num1 - num2);
					break;
		case "mul": result=(num1 * num2);
					break;
		case "div": result=(num1 / num2);
					break;
		}
		request.setAttribute("result", result );
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}