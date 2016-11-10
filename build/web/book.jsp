<%-- 
    Document   : book
    Created on : 26 Jun, 2014, 2:16:30 PM
    Author     : Admin
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guest Book</title>
        <style>
            body{
                font-family: Tahoma;
                background: #002E2E;
                color: #FFFFA8;
                
            }
        </style>
    </head>
    <body>
        <div align="center" >
            <h1>Guest Book</h1><br>
        
        <table border="1" style="text-align:center;" >
            <tr>
                <th width="200">Name</td>
                
                <th width="500">Message</td>
            </tr>
        <% Iterator itr;Integer i;%>
        <% List data=(List)request.getAttribute("data");
        
        for(itr=data.iterator();itr.hasNext();)
                       {
            %>
            
            
                <tr>
                    <td width="100"><%=itr.next()%></td>
                <td width="400"><a href="www.google.co.in" > <%=itr.next()%></a></td>
                    
                </tr>
            
                    <% } %>
                    </table>
        </div>
        
    </body>
</html>
