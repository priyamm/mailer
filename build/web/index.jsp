<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>


<h:html>
    <head>
        <title>
            Login Panel
        </title>
        <style>
            
            @font-face {
        font-family: priyam;
        src: url(fonts/hermandec.ttf);
        }
        @font-face {
        font-family: priyamm;
        src: url(fonts/hermandecl.ttf);
        }
            body{
                padding: 0;
                margin: 0;
                width: 100%;
                font-family: Tahoma;
                display: -webkit-box;
                -webkit-box-pack:center;
                -webkit-box-orient: vertical;
               
              background-color: #026873;
background-image: linear-gradient(90deg, rgba(255,255,255,.07) 50%, transparent 50%),
linear-gradient(90deg, rgba(255,255,255,.13) 50%, transparent 50%),
linear-gradient(90deg, transparent 50%, rgba(255,255,255,.17) 50%),
linear-gradient(90deg, transparent 50%, rgba(255,255,255,.19) 50%);
background-size: 13px, 29px, 37px, 53px;
                
            }   
            .header{
                width: 100%;
                height: 10%;
                position: relative;
                
                display: inline-block;
            }
            .head1{
                font-family: priyamm;
                font-size: 100px;
                font-weight: bold;
                position: absolute;
                margin-left: 14%;
                margin-top: 8%;
                
            }
            .head2{
                text-align: right;
                position: relative;
                
            }
            .box{
                
                display: inline-block;
                position: relative;
                width: 100%;
                height: 90%;
                
                display: -webkit-box;
                -webkit-box-pack:center;
                -moz-box-pack:center;
                
                
                
            }
            .leftbox{           /*images*/
                position: relative;
                width: 40%;
                height: 70%;
                
                float: left;
                margin: 40px;
            }
            .rightbox{
                position: relative;
                width: 40%;
                height: 70%;
                
                float: right;
                margin: 40px;
                              
            }
            .inner{
                display: block;
                position: relative;
                background: antiquewhite;
                border: 1px solid red;
                width: 50%;
                text-align: center;
                height: 100%;
                margin-left: 20%;
                 -moz-border-radius: 10px;
     -webkit-border-radius: 10px;
    border-radius: 10px;
    
    /*Applying CSS3 box shadow*/
    -moz-box-shadow: 0 0 2px #DDDDDD;
    -webkit-box-shadow: 0 0 2px #DDDDDD;
    box-shadow: 0 0 2px #DDDDDD;
                
            }
            
            .deepinner{
                 display: block;
                position: relative;
                margin-top: 18%;
            }
            
    input[type="text"], input[type="password"]{
    width: 100%;
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
.head{
    width: 20%;
}
.head2 input[type="text"]{
    background: url('img/googleb.gif');
}
            
        </style>
         
    </head>
    <h:javascript formName="LoginBean" />
    <body>
        <div class="header">
             <div align="center" class="head1">Quick Mail</div>
                    <div align="center" class="head2" >
                        <form action="http://www.google.com/search">
                        <input type="text" style="width:20%;" name=q size="32"/>                  
                        <h:submit value="Search"/>
                        </form>
                     </div>
        </div>
        
        <div class="box">
            <div class="leftbox">
                
            </div>
            <div class="rightbox">  
                <div class="inner">
                    <div class="deepinner">
    <h:form action="/login" onsubmit="return validateLoginBean(this)" method="get">
        <table align="center">
            <tr>
                <td align="center" style="color: red;" colspan="2">
                    <h:errors/>${requestScope.msgg}
                </td>
            </tr>
        <tr>
            <td>UserName </td>
            <td><h:text property="user" /></td>   
        </tr>
        <tr>
            <td>Password </td>
            <td><h:password property="pass" /></td>   
        </tr>
        
        
        <tr>
            <td colspan="2"><h:submit value="Sign In" /></td>
            
        </tr>   
        
        <tr>
            
            <td colspan="2"><br/><hr/> </td>
        </tr>
  
        </table>
            <br/>
        
    </h:form>
                    </div>New to Quick Mail? Sign Up!!<br/><br/>
                    <form action="register.jsp">
                        <h:submit value="Register" />
                    </form>
    
                </div>
            </div>
        </div>
    </body>
</h:html>