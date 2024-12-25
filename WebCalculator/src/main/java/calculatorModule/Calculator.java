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
		double num1 = Double.parseDouble(request.getParameter("value1"));
		double num2 = Double.parseDouble(request.getParameter("value2"));
		System.out.println("n1 - "+num1);
		System.out.println("n2 - "+num2);
		double result =0;
		String btn= request.getParameter("btn");
		switch(btn) {
		case "add": result=(num1 + num2);
					break;
		case "sub": result=(num1 - num2);
					break;
		case "mul": result=(num1 * num2);
					break;
		case "div": if(num2!=0)
					result=(num1 / num2);
		else request.setAttribute("res", "number can't divide by 0" );
		request.getRequestDispatcher("index.jsp").forward(request, response);
					break;
		}
		System.out.println("resullt = "+result);
		request.setAttribute("result", result );
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}