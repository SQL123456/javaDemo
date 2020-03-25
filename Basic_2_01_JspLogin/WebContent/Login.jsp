<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script>
        function resetValue(){
        	document.getElementById("userName").value="";
        	document.getElementById("password").value="";
        }
</script>

<%   
        String name=null;
        String  pwd=null;
       Cookie[]   cookie=request.getCookies();
       for(int i=0;cookie!=null && i<cookie.length;i++){
    	   if(cookie[i].getName().equals("info")){
    		   name=cookie[i].getValue().split("#")[0];
    		   pwd=cookie[i].getValue().split("#")[0];
    	   }
       }
       
       if(name==null){
    	   name="";
       }
       
       if(pwd==null){
    	   pwd="";
       }
%>
<title>Insert title here</title>
</head>
<body>
         <form action="judge.jsp"   method="post">
                  <table  border="1">
                          <tr>
                                 <td>用户名：</td>
                                 <td><input  type="text"    id="userName"    name="user"    value="<%=name %>"></td>
                          </tr>
                          <tr>
                                 <td>密  码：</td>
                                 <td><input  type="password"    id="password"    name="pwd"    value="<%=pwd %>"></td>
                          </tr>
                          <tr>
                                 <td>记住密码：</td>
                                 <td><input  type="checkbox"    id="remeber"    name="remeber"    value="remeber_me"></td>
                          </tr>
                          <tr>
                                 <td><input  type="submit"     value="提交"></td>
                                 <td><input  type="reset"      name="重置"></td> 
                                <td><input  type="button"       value="重置二号"     onclick="resetValue()"></td> 
                          </tr>
                  </table>
         </form>
</body>
</html>