<%-- 
    Document   : header
    Created on : 3 Jul, 2014, 3:33:25 AM
    Author     : Admin
--%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<% String user=(String)session.getAttribute("user");%>
<% String fname=(String)session.getAttribute("fname");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <style>
            
         input[type="text"], input[type="textarea"]{
    width: 350px;
    padding: 5px;   
    border: 1px solid #DDDDDD;
    text-align: center;
    
    /*Applying CSS3 gradient
    background: -moz-linear-gradient(center top , #FFFFFF,  #EEEEEE 1px, #FFFFFF 20px);    
    background: -webkit-gradient(linear, left top, left 20, from(#FFFFFF), color-stop(5%, #EEEEEE) to(#FFFFFF));
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FBFBFB', endColorstr='#FFFFFF');
    
    /*Applying CSS 3radius*/   
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    
    /*Applying CSS3 box shadow*/
    -moz-box-shadow: 0 0 2px #DDDDDD;
    -webkit-box-shadow: 0 0 2px #DDDDDD;
    box-shadow: 0 0 2px #DDDDDD;

}
input[type="text"]:hover,input[type="submit"]:hover,input[type="textarea"]:hover
{
    border:1px solid #cccccc;
}
input[type="text"]:focus ,input[type="submit"]:focus,input[type="textarea"]:focus
{
    box-shadow:0 0 2px #FFFE00;
}
input[type="submit"]{
    width: 100px;
    margin: 10px;
    padding: .3em .6em;
box-shadow: 0 2px 1px rgba(0,0,0,0.3),0 1px 0 rgba(255,255,255,0.4) inset;
-moz-box-shadow: 0 2px 1px rgba(0,0,0,0.3),0 1px 0 rgba(255,255,255,0.4) inset;
background-color: #333;
color: #fff;
border: 1px solid #000 !important;
border-radius: 3px;
-moz-border-radius: 3px;
text-decoration: none;
cursor: pointer;
}

 @font-face {
        font-family: priyamm;
        src: url(fonts/hermandecl.ttf);
        }
        

.quick{
    position: relative;
    float: left;
     font-family: priyamm;
        font-size: 40px; 
        
}
.google{
    position: relative;
    top: 50%;
    left: -80px;        
}
.google input[type="text"]{
    
    background-image: url('img/googleb.gif');
    
    
}
.outt{
    
}
        </style>
    </head>
    <body>
        <table width="100%">
            <tr>
                <td width="100%" height="70" >
                    
                    <div align="center" class="quick">Quick Mail</div>
                    <div class="google" align="center">
                        <form action="http://www.google.com/search">
                        <input type="text" name=q size="32"/>                  
                        <h:submit value="Search"/>
                        </form>
                        
                    </div>
                        <div class="outt" align="right">
                           
                        <h:form action="/logout">
                            Welcome <%=fname%>&nbsp;<h:submit value="Logout" />
                        </h:form>
                        </div>
                        
                </td>
            </tr>
            
        </table>
    </body>
</html>
