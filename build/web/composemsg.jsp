<%-- 
    Document   : composemsg
    Created on : 4 Jul, 2014, 11:48:06 PM
    Author     : Admin
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compose</title>
        <style>
            .mid{
                overflow: auto;
                height: 400px;
                color: black;
            }
            td .inboxarea .hex{
                background: white;
                opacity: 0.6;
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
                <td width="800" height="450" valign="top" >
                    <div class="penta"><marquee behavior="scroll" direction="left" scrollamount="5"
                                                    onmouseover="this.stop();" onmouseout="this.start();">
                            Enjoy the fastest Mail Service experience with User-Friendly <b>Quick Mail</b>.
                                       </marquee>
                    </div>
                    <div class="hex">
                    <div class="mid" align="center" style="padding: 20px;">
                        <h:form action="/compose">
                            <table align="center">
                                <tr>
                                    <th colspan="2">New Message</th>
                                </tr>
                                <tr>
                                    <td>To:</td>
                                    <td><h:text property="sendto" /></td>                                       
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <font style="color: orange;"><h:errors/>${requestScope.msgg}</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2"><h:textarea property="area" rows="15" cols="50">Enter text here</h:textarea></td> 
                                 </tr>
                                 <tr><td colspan="2" align="right"><h:submit value="Send"/></td></tr>
                            </table>
                        </h:form>
                     </div>
                    </div>
                </td>
            </tr>
            
        </table>
         
    </body>
</html>
