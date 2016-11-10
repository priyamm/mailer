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

/**
 *
 * @author Admin
 */
public class Logout extends org.apache.struts.action.Action {

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
        request.setAttribute("msgg", "*Nothing Happnd.");
        if(session==null)
        {
        SUCCESS="fail";
            request.setAttribute("msgg", "*Not LoggedIn");
        }
        else{
            session.removeAttribute("user");
            session.removeAttribute("fname");
            String s=(String)session.getAttribute("fname");
            request.setAttribute("msgg","Logged Out Sucessfully");
            session.invalidate();
        }
        
        return mapping.findForward(SUCCESS);
    }
}
