package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;


@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");	// ��û������ �ѱ� ���ڵ�
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(id, pw, nick, gender, age);
		
		System.out.println(id);
		System.out.println(pw);
		
		System.out.println(age);
		
		PrintWriter out = response.getWriter();
		
		if(cnt>0) {
			System.out.println("성공!");
			
			out.print(nick);			
			
		}else {
			System.out.println("실패..");
			
			out.print(0);
		}
	
	}

}
