<%-- 
    Document   : new
    Created on : 30 Jun, 2014, 3:02:13 PM
    Author     : Admin
--%>
<%@page import="java.lang.String"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outbox</title>
        <style>
            .mid{
                overflow: auto;
                height: 400px;
            }
            .tab td:hover{
                    background: burlywood;
            }
            td .inboxarea .hex{
                background: white;
                opacity: 0.5;
                border-radius: 3px;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
            }
            .penta{
                text-align: center;
                margin-bottom: 5px;
                color: crimson;
                opacity:1;
            }
        </style>
    </head>
    <body>
       
           <table class="inboxarea" width="800">
            <tr>
                <td width="800" height="460" valign="top" >
                    <div class="penta"><marquee behavior="scroll" direction="left" scrollamount="5"
                                                    onmouseover="this.stop();" onmouseout="this.start();">
                            Enjoy the fastest Mail Service experience with User-Friendly <b>Quick Mail</b>.
                                       </marquee>
                    </div>
                    <div class="hex">
                    <div class="mid" align="center" style="padding: 20px;">
                        
                        <table class="tab" border="1" style="text-align: center; color: black; background: #ebeff9;" >
            <tr>
                <th width="200">Mail To</th>
                
                <th width="400">Message</th>
            </tr>
        <% Iterator itr;Integer i;%>
        <%List data2=(List)session.getAttribute("dataout");
        for(itr=data2.iterator();itr.hasNext();)
                       {
            %>
            
            
                <tr>
                    <td width="100"><%=itr.next()%></td>
                   
                    <td width="400"><%String str=(String)itr.next();Integer len=str.length(); String x=str;if(len>15)x=str.substring(0,16);%>
                       <%=x%>
                    </td>
                            
                </tr> 
            
                    <% } %>
                    </table>
                    
                    </div>
                    </div>
                </td>
            </tr>
            
        </table>
        
    </body>
</html>
