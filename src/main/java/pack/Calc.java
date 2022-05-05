package pack;

import java.io.IOException;



import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet(name="Calc", urlPatterns="/Calc")
public class Calc extends HttpServlet {

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestCalc Calc = RequestCalc.fromRequestParameters(request);
		Calc.setAsRequestAttributesAndCalculate(request);
		
		request.getRequestDispatcher("/Result.jsp").forward(request, response);
				 
		
	}
	
	private static class RequestCalc {
		private final String first_calc;
		private final String second_calc;
		private final String third_calc;
		private final String fourth_calc;
		private final String fifth_calc;
		private final String sixth_calc;
		private final String seventh_calc;
		private String result;
		
		private RequestCalc (String first, String second, String third,
				String fourth, String fifth, String sixth, String seventh) {
			this.first_calc = first;
			this.second_calc = second;
			this.third_calc = third;
			this.fourth_calc = fourth;
			this.fifth_calc = fifth;
			this.sixth_calc = sixth;
			this.seventh_calc = seventh;
		}
		
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
			request.getParameter("first"),
			request.getParameter("second"),
			request.getParameter("third"),
			request.getParameter("fourth"),
			request.getParameter("fifth"),
			request.getParameter("sixth"),
			request.getParameter("seventh"));
			}
		
		public void setAsRequestAttributesAndCalculate(HttpServletRequest request) {
			request.setAttribute("first_result", first_calc);
			request.setAttribute("second_result", second_calc);
			request.setAttribute("third_result", third_calc);
			request.setAttribute("fourth_result", fourth_calc);
			request.setAttribute("fifth_result", fifth_calc);
			request.setAttribute("sixth_result", sixth_calc);
			request.setAttribute("seventh_result", seventh_calc);
			double first_try;
			double second_try;
			double third_try;
			double fourth_try;
			double fifth_try;
			double sixth_try;
			double seventh_try;
			
			try {
				first_try = Double.parseDouble(first_calc);
				second_try = Double.parseDouble(second_calc);
				third_try = Double.parseDouble(third_calc);
				fourth_try = Double.parseDouble(fourth_calc);
				fifth_try = Double.parseDouble(fifth_calc);
				sixth_try = Double.parseDouble(sixth_calc);
				seventh_try = Double.parseDouble(seventh_calc);
			}
			catch (NumberFormatException e) {
				first_try = 0;
				second_try = 0;
				third_try = 0;
				fourth_try = 0;
				fifth_try = 0;
				sixth_try = 0;
				seventh_try = 0;
			}
			
			if (first_try <=0 | second_try <=0 | third_try <=0 |
					fourth_try <=0 | fifth_try <=0 | sixth_try <=0 
					| seventh_try <0) {
				request.setAttribute("result", "Введены неккоректные данные");
			} else {
				Result doRes = new Result();
				doRes.raschet(first_try, second_try, third_try, 
						fourth_try, fifth_try, sixth_try, seventh_try);
				result = doRes.getOtvet();
				request.setAttribute("result", result);
			}

			
			
			
		}
	}
}