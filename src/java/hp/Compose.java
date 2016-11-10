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
public class Compose extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static String SUCCESS = "success";
    boolean status=false;
     
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        HttpSession session=request.getSession(false);
        LoginBean lb=(LoginBean)form;
        String sendto=lb.getSendto();
        String area=lb.getArea();
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/social","root","password");
           // Statement stmt=con.createStatement();
            
            PreparedStatement pst=con.prepareStatement("select * from users where username=?");
            pst.setString(1,sendto);
            ResultSet rs=pst.executeQuery();            
            status=rs.next();
            if(status){
                session.setAttribute("sendto",lb.getSendto());
                session.setAttribute("area",lb.getArea());
                SUCCESS="success";  
           }
            else{
                request.setAttribute("msgg", "Invalid Email ID");
                SUCCESS="fail";
            }
        }
        
        catch(Exception e){
	e.printStackTrace();
	}
        
        return mapping.findForward(SUCCESS);
    }
}
