<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="customer.CustomerDTO"%>
<%@ page import="customer.CustomerDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	String userPassword = null;
	String confirm = null;
	if(request.getParameter("userId") != null){
		userID = (String) request.getParameter("userId");
	}
	if(request.getParameter("userPassword") != null){
		userPassword = (String) request.getParameter("userPassword");
	}
	if(request.getParameter("confirm") != null){
		confirm = (String) request.getParameter("confirm");
	}
	if(userID == "" || userPassword == "" || confirm == ""){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		return;
	}
	if(!userPassword.equals(confirm)){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호 확인이 일치하지 않습니다.');");
		script.println("history.back();");
		script.println("</script>");
		return;
	}
	CustomerDAO customerDAO = new CustomerDAO();
	int result = customerDAO.signup(userID, userPassword);
	if(result == 1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입에 성공했습니다.');");
		script.println("location.href = 'userInfo/login.jsp'");
		script.println("</script>");
		return;
	}
%>