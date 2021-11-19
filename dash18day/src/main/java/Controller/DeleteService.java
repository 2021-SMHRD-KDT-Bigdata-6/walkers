package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;


@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.delete(id);
		
		if (cnt > 0) {
			System.out.println("성공!");
			response.sendRedirect("index.jsp");
		}
		else {
			System.out.println("실패!");
			response.sendRedirect("index.jsp");
		}

	}

}
