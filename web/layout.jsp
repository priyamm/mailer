<%-- 
    Document   : layout
    Created on : 3 Jul, 2014, 3:35:04 AM
    Author     : Admin
--%>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="p" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quick Mail</title>
        <style>
            body{
                font-family: Tahoma;
                
                color: #FFFFA8;
                text-align: center;
   /*            background:
radial-gradient(black 15%, transparent 16%) 0 0,
radial-gradient(black 15%, transparent 16%) 8px 8px,
radial-gradient(rgba(255,255,255,.1) 15%, transparent 20%) 0 1px,
radial-gradient(rgba(255,255,255,.1) 15%, transparent 20%) 8px 9px;
background-color:#282828;
background-size:16px 16px; */
background-image: url('img/1.jpeg');
                
            }
        </style>
    </head>
    <body>
        <table align="center">
            <tr>
                <td  height="30" width="100%" colspan="3" valign="top" >
            <p:insert attribute="HEADER">
            </p:insert>
                </td>
            </tr>
            <tr>
                <td  width="200" height="450" valign="top" >
            <p:insert attribute="MENU">
            </p:insert>
            </td>
            <td valign="top" width="800">
                <p:insert attribute="BODY">
                </p:insert>
            </td>
            <td>
            <p:insert attribute="SIDE">
            </p:insert>
            </td>
            </tr>
            <tr>
                <td  height="10" colspan="3" valign="top" >
            <p:insert attribute="FOOTER">
            </p:insert>
                </td>
            </tr>
            
            
            
        </table>
    </body>
</html>
