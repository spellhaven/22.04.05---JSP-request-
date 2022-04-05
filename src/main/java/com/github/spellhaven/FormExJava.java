package com.github.spellhaven;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormExJava
 */
@WebServlet("/FormExJava")
public class FormExJava extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
	// 서블릿은 알아서 생성자도 생기네...
    public FormExJava() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    // 서블릿은 알아서 doGet이랑 doPost라는 메소드들이 생기네... 이 두 놈들은 무조건 오버라이드 해 줘야겠네...
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("GET 방식 실행됨 ㅋ");
		
		request.setCharacterEncoding("UTF-8"); // 인코딩 잘 함 ㅋ
		
		String pname = request.getParameter("name");
		String ppw = request.getParameter("pw");
		
		System.out.println(pname);
		System.out.println(ppw);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("POST 방식 실행됨 ㅋ");
	}

}
