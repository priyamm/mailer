<%-- 
    Document   : register
    Created on : 4 Jul, 2014, 11:18:57 PM
    Author     : Admin
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <style>
            @font-face {
        font-family: priyam;
        src: url(fonts/hermandec.ttf);
        }
        @font-face {
        font-family: priyamm;
        src: url(fonts/hermandecl.ttf);
        }
        .header{
        font-family: priyamm;
        font-size: 60px; 
        color: blue;
        }
        .header2{
            font-size: 42px;
        }
        
            .box{
                display: block;
                text-align: center;
                font-family: Tahoma;
                
                font-size: 30px;
                position: relative;
                height: 100%;
                width: 100%;
            }
            
          input[type="text"], input[type="password"]{
    width: 100%;
    padding:10px;
    margin-left: 20px; 
    border: 1px solid #DDDDDD;
    text-align: center;
    
    /*Applying CSS3 gradient
    background: -moz-linear-gradient(center top , #FFFFFF,  #EEEEEE 1px, #FFFFFF 20px);    
    background: -webkit-gradient(linear, left top, left 20, from(#FFFFFF), color-stop(5%, #EEEEEE) to(#FFFFFF));
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FBFBFB', endColorstr='#FFFFFF');
    
    /*Applying CSS 3radius*/   
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    
    /*Applying CSS3 box shadow*/
    -moz-box-shadow: 0 0 2px #DDDDDD;
    -webkit-box-shadow: 0 0 2px #DDDDDD;
    box-shadow: 0 0 2px #DDDDDD;

}
input[type="text"]:hover,input[type="submit"]:hover,input[type="password"]:hover
{
    border:1px solid #cccccc;
}
input[type="text"]:focus ,input[type="submit"]:focus,input[type="password"]:focus
{
    box-shadow:0 0 2px #FFFE00;
}
      
            
            input[type="submit"]{
    width: 200px;
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
           
.qmail{
    position: absolute;
    float: right;
       
}
.tab1{
    position: relative;
    
}
        </style>
    </head>
    <body>
        <div class="box">
            
                
             <div align="center" class="header">Quick Mail</div>
           
            <div class="header2">Sign Up</div>
        <h:form action="/reg" method="get">
            <table class="tab1" align="center" width="500" > 
                <tr>
                    <td colspan="2"><h:errors/>${requestScope.regmsg}</td>
                </tr>
                <tr>
                    <td width="170"> First Name</td>
                    <td width="250"> <h:text property="fname" /></td>
                </tr>
                <tr>
                    <td width="170">Last Name</td>
                    <td width="250"><h:text property="lname" /></td>
                </tr>
                <tr>
                    <td width="170">UserName</td>
                    <td width="250"><h:text property="ruser" /><span class="qmail">@qmail.com</span></td>
                </tr>
                <tr>
                    <td width="170">Password</td>
                    <td width="250"><h:text property="rpass" /></td>
                </tr>
                <tr>
                    <td width="170">Mobile No.</td>
                    <td width="250"><h:text property="mob" maxlength="10" /></td>
                </tr>
                <tr>
                    <td colspan="2"><h:submit value="Register" /></td>
                </tr>
            </table>
        </h:form>
        </div>
    </body>
</html>
