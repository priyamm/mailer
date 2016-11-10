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
public class Send extends org.apache.struts.action.Action {

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
        HttpSession session=request.getSession(false);
        String sendto=request.getParameter("sendto");
        String area=request.getParameter("area");
        String user=(String)session.getAttribute("user");
       // request.setAttribute("msgg", "Message Not Sent.");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/social","root","password");
            Statement stmt=con.createStatement();
            PreparedStatement pst=con.prepareStatement("insert into "+sendto+"i(other,msg,tym) values(?,?,NOW())");
            pst.setString(1,user);
            pst.setString(2,area);
            int result=pst.executeUpdate();
            PreparedStatement pst2=con.prepareStatement("insert into "+user+"o(other,msg,tym) values(?,?,NOW())");
            pst2.setString(1,sendto);
            pst2.setString(2,area);
            int result2=pst2.executeUpdate();
            if(result>0 && result2>0)
            {
                request.setAttribute("msgg", "Message Sent");
                SUCCESS = "success";
            }
            else{
                request.setAttribute("msgg", "Message Not Sent.");
                SUCCESS = "fail";
            }
        }
        catch(Exception e){
            
        }
        
        
        return mapping.findForward(SUCCESS);
    }
}
