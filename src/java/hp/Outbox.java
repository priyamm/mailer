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
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Admin
 */
public class Outbox extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static String SUCCESS = "success";

    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        HttpSession session=request.getSession(false);
        String user=(String)session.getAttribute("user");
        if(user!=null)
        {
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/social","root","password");
            Statement stmt=con.createStatement();
            Statement stmt2=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from "+user+"o order by id desc");                       
            List dataList=new ArrayList();
            List circles=new ArrayList();
            while(rs.next()){
                dataList.add(rs.getString("other"));
                dataList.add(rs.getString("msg"));
                
                
            }
            ResultSet rs2=stmt2.executeQuery("select distinct other from "+user+"i order by other asc");
            while(rs2.next()){
                circles.add(rs2.getString("other").substring(0, 1).toUpperCase() + rs2.getString("other").substring(1));                               
            }
            
            session.setAttribute("dataout",dataList); 
            session.setAttribute("circles",circles);
        } 
        catch(Exception e){
	
	}
        
        finally {            
            
            //con.close();
        }
        }
        else{
            SUCCESS="fail";
            request.setAttribute("msgg","Not Logged IN");
        }
        
        return mapping.findForward(SUCCESS);
    }
}
