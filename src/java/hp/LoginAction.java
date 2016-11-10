/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package hp;

import java.io.PrintWriter;
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
public class LoginAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static String SUCCESS = "fail";

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        boolean status=false;
        HttpSession session=request.getSession(true);
        LoginBean lb=(LoginBean)form;
        String user=lb.getUser();
        String pass=lb.getPass();
        
         try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/social","root","password");
            Statement stmt=con.createStatement();
            
            PreparedStatement pst=con.prepareStatement("select * from users where username=? and password=?");
            pst.setString(1,user);
            pst.setString(2,pass);
            ResultSet rs=pst.executeQuery();
            
            status=rs.next();
            
            if(status){
                session.setAttribute("user",lb.getUser());
                session.setAttribute("fname",rs.getString("fname").toUpperCase());
                SUCCESS="success"; 
                request.setAttribute("msgg", "*Inside login");
           }
            else{
                request.setAttribute("msgg", "*Invalid Login");
                SUCCESS="fail";
            }
        }
        
        catch(Exception e){
	e.printStackTrace();
	}
        
        return mapping.findForward(SUCCESS);
    }
}
