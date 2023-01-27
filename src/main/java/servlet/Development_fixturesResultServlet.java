package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Development_fixturesDAO;
import dto.Development_fixtures;

/**
 * Servlet implementation class Development_fixturesResultServlet
 */
@WebServlet("/Development_fixturesResultServlet")
public class Development_fixturesResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Development_fixturesResultServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		String quantityStr = request.getParameter("quantity");
		
		int quantity = Integer.parseInt(quantityStr);
		
		Development_fixtures fixtures = new Development_fixtures(-1, name, content, quantity);
		
		int result = Development_fixturesDAO.registerFixtures(fixtures);
		
		String view = "WEB-INF/view/Development_fixturesResult.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
