/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package hp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.sql.*;
/**
 *
 * @author Admin
 */
public class Register extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static String SUCCESS = "fail";

    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        
        RegisterBean rb=(RegisterBean)form;
        String ruser=rb.getRuser();
        String rpass=rb.getRpass();
        String fname=rb.getFname();
        String lname=rb.getLname();
        String mob=(rb.getMob());
        if(ruser.equals("")||rpass.equals("")||fname.equals("")||lname.equals("")||mob.equals("")){
            request.setAttribute("regmsg", "Please fill up all the fields.");
        }
        else
        {
        boolean status=true;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/social","root","password");
            Statement stmt=con.createStatement();
            
            PreparedStatement pst=con.prepareStatement("select * from users where username=?");
            pst.setString(1,ruser);
            ResultSet rs=pst.executeQuery();           
            status=rs.next();
            if(status){
                request.setAttribute("regmsg", "UserName already Occupied.");
                SUCCESS="fail";  
           }
            else{
            PreparedStatement pst2=con.prepareStatement("insert into users values(?,?,?,?,?)");
            pst2.setString(1,ruser);
            pst2.setString(2,rpass);
            pst2.setString(3,fname);
            pst2.setString(4,lname);
            pst2.setString(5,mob);
            
            int result=pst2.executeUpdate();
                int statusi=stmt.executeUpdate("create table "+ruser+"i(id int not null auto_increment,other varchar(50),msg varchar(100),tym datetime not null,primary key (id))");
             int statuso=stmt.executeUpdate("create table "+ruser+"o(id int not null auto_increment,other varchar(50),msg varchar(100),tym datetime not null,primary key (id))");
             PreparedStatement pst3=con.prepareStatement("insert into "+ruser+"i(other,msg,tym) values('Quick Mail','Welcome to Qmail',NOW())");
             int result2=pst3.executeUpdate();
             if(result>0&&result2>0&&statusi==0&&statuso==0){
                HttpSession session=request.getSession(true);
                session.setAttribute("user",ruser);
                session.setAttribute("fname",fname.toUpperCase());
                SUCCESS="success";
            }
            }
        }
        
        catch(Exception e){
	e.printStackTrace();
	}
        }
        return mapping.findForward(SUCCESS);
    }
}
