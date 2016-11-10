/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package hp;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Admin
 */
public class Inbox extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static String SUCCESS = "success";
   
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
        SUCCESS="success";
         String user=(String)session.getAttribute("user"); 
        
        if(user!=null)
        {
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/social","root","password");
            Statement stmt=con.createStatement();
            Statement stmt2=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from "+user+"i order by id desc");
            List dataList=new ArrayList();
            List circles=new ArrayList();
            int num=0;
            while(rs.next()){
                dataList.add(rs.getString("other"));
                dataList.add(rs.getString("msg"));
                num++;
                
            }
            ResultSet rs2=stmt2.executeQuery("select distinct other from "+user+"i order by other asc");            
            while(rs2.next()){
                circles.add(rs2.getString("other").substring(0, 1).toUpperCase() + rs2.getString("other").substring(1));                               
            }
            
            request.setAttribute("data", dataList);
            session.setAttribute("data2",dataList);
            session.setAttribute("circles",circles);
            //ResultSet number=stmt.executeQuery("select count(*) from "+user+"i");
            
            session.setAttribute("num",num);
           //  RequestDispatcher rd=request.getRequestDispatcher("book.jsp");
            // rd.include(request, response);
            //request.setAttribute("msgg",SUCCESS);
            
            /*
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet guest</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>");
            
            
            out.println("</h1>");
            out.println("</body>");
            out.println("</html>");
              
             */
             
             
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
