<%-- 
    Document   : new
    Created on : 30 Jun, 2014, 3:02:13 PM
    Author     : Admin
--%>
<%@page import="java.util.List"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table width="760" border="1">
            <tr>
                <td width="760" height="460" valign="top" >
                    <div class="circle">
                             <% Iterator itr;Integer i;%>
        <%List circles=(List)session.getAttribute("circles");
        for(itr=circles.iterator();itr.hasNext();)
                       {
            %>
            <%=itr.next()%><br/>
            <% } %>
            
                         </div>
                    </div>
                </td>
            </tr>
            
        </table>
    </body>
</html>
