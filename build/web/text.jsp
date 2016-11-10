<%-- 
    Document   : text
    Created on : 5 Jul, 2014, 2:10:47 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1><br>
        <H1>Reading Text Areas</H1>
        You typed:
        <BR>
        <%
        StringBuffer text = new StringBuffer(request.getParameter("area"));
        
        String s=(String)session.getAttribute("user");
        out.println(s);
        
  
        int loc = (new String(text)).indexOf('\n');
        while(loc > 0){
            text.replace(loc, loc+1, "<BR>");
            loc = (new String(text)).indexOf('\n');
       }
       out.println(text);
       
       out.println(request.getParameter("area"));
       
       %>
       <h1><%=s%></h1>
        </br>
    </body>
</html>
