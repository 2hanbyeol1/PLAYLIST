<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="customer.CustomerDTO"%>
<%@ page import="customer.CustomerDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	String userPassword = null;
	if(request.getParameter("userId") != null){
		userID = (String) request.getParameter("userId");
	}
	if(request.getParameter("userPassword") != null){
		userPassword = (String) request.getParameter("userPassword");
	}
	if(userID == "" || userPassword == ""){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		return;
	}
	CustomerDAO customerDAO = new CustomerDAO();
	int result = customerDAO.login(userID, userPassword);
	if(result == 1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인 되었습니다!');");
		script.println("location.href = 'main/main.jsp'");
		script.println("</script>");
		return;
	} else if (result == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('잘못된 비밀번호 입니다.');");
		script.println("history.back();");
		script.println("</script>");
		return;
	} else if (result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디입니다.');");
		script.println("history.back();");
		script.println("</script>");
		return;
	}
%>