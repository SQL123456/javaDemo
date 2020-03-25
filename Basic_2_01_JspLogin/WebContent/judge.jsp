<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
        <%
                String user=request.getParameter("user");
                String pwd=request.getParameter("pwd");
                String remeber=request.getParameter("remeber"); 
                System.out.println("用户名:"+user);
                System.out.println("密码:"+pwd);
                System.out.println("remeber:"+remeber);
        %>
        <% 
                if(user!="" && user!=null &&pwd!="" &&pwd!=null){
                	if("remeber_me".equals(remeber)){
                		Cookie cookie=new Cookie("info",user+"#"+pwd);
                		cookie.setMaxAge(1*60*60*24*7);
                		response.addCookie(cookie);
                		response.sendRedirect("Login.jsp"); 
                		
                	}
                }
        %>
</body>
</html>