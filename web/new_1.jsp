<%-- 
    Document   : new
    Created on : 30 Jun, 2014, 3:02:13 PM
    Author     : Admin
--%>
<%@page import="java.util.List"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.Iterator"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!String str;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inbox</title>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
  $("#first").click(function(){
    $("#second").slideToggle("slow");
  });
});
</script>
        <style>
            .mid{
                overflow: auto;
                height: 400px;
            }
            .tab td{
                cursor: pointer;
            }
            .tab td:hover{
                    background: burlywood;
                    cursor: pointer;
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
            #second{
                display: none;
                cursor: pointer;
            }
            .third{
                float: right;
                opacity:0.4;
            }
            
            
        </style>
    </head>
    <body>
       
           <table class="inboxarea" width="800">
            <tr>
                <td width="800" height="450" valign="top" >
                    <div class="penta"><marquee behavior="scroll" direction="left" scrollamount="5"
                                                    onmouseover="this.stop();" onmouseout="this.start();">
                            Enjoy the fastest Mail Service experience with User-Friendly <b>Quick Mail</b>.
                                       </marquee>
                    </div>
                    <div class="hex">
                    <div class="mid" align="center" style="padding: 20px;">
                        
                        <table class="tab" border="1" style="text-align: center; color: black; background: #ebeff9;" >
            <tr>
                <th width="200">Sender</th>
                
                <th width="400">Message</th>
            </tr>
        <% Iterator itr;Integer i;%>
        <% List data=(List)request.getAttribute("data");
        List data2=(List)session.getAttribute("data2");
        for(itr=data2.iterator();itr.hasNext();)
                       {
            %>
            
            
                <tr>
                    <td width="100"><%=itr.next()%></td>
                   
                    <td id="first" width="400"><% str=(String)itr.next();Integer len=str.length(); String x=str;if(len>15)x=str.substring(0,16);%>
                        <%=x%><div class="third">Click..</div><div id="second" style="display:none;">Full Message: <%=str%></div>
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
