<%-- 
    Document   : menu
    Created on : 3 Jul, 2014, 3:34:07 AM
    Author     : Admin
--%>
<%@page import="java.util.List"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<%!String str;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <style>
            .menu{
                
                
                line-height: 2em;
                height: 100%;
                width: 100%;
            }
            td ul{
                
                text-align: left;
            }
            .menu ul li a{
                text-align: left;width: 70%;
                    padding: 0;margin: 0;
            list-style: none;
            text-decoration: none;
            color: orange;
            margin-left: 30px;
            }
            .menu li:hover{ display:block;
                        
                        border: 1px solid white;
                        
                        width: 90%;
                        cursor: pointer;
                        border-radius: 3px;
                        -moz-border-radius: 3px;
                        -webkit-border-radius: 3px;}
            .circle{
                height: 200px;
                overflow: auto;
                color: orange;
                font-size: 16px;
                margin-left: 30px;
            }  
            .innercircle{
                color: orange;
                font-size: 16px;
                margin-left: 30px;
                font-weight: bold;
            }
 
            
            
        </style>
    </head>
    <body>
        <table width="200">
            <tr>
                <td  height="450" width="200">
                    <div class="menu">
                        <br/>
                        <ul type="none">                  
                    <li><h:link action="/composelog">Compose</h:link></li>
                    <li> <b><h:link action="/in">Inbox (<%Integer num=(Integer)session.getAttribute("num");%><%=num%>)</h:link></b></li>
                    <li><h:link action="/out">Outbox</h:link></li><br/>
                    <hr/>
                    
                        
                       <li><div class="innercircle">Circles</div></li>
                         <div class="circle" align="left">
                             
                             <% Iterator itr;Integer i;%>
        <%List circles=(List)session.getAttribute("circles");
        for(itr=circles.iterator();itr.hasNext();)
                       {
            str=(String)itr.next();Integer len=str.length(); String x=str;if(len>10)x=str.substring(0,10);
            %>
           <li>  <%=x%></li>
            <% } %>
            
                         </div>
                    
                    </ul>
                    </div>
                    
                </td>
            </tr>
            
        </table>
    </body>
</html>
