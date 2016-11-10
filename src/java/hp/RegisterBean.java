/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package hp;

import javax.servlet.http.HttpServletRequest;
import java.util.*;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Admin
 */
public class RegisterBean extends org.apache.struts.action.ActionForm {
    
    private String fname;
    private String lname;
    private String ruser;
    private String rpass;
    private String  mob;
   
    
    /*
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getName() == null || getName().length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    } 
      
     */

    /**
     * @return the fname
     */
    public String getFname() {
        return fname;
    }

    /**
     * @param fname the fname to set
     */
    public void setFname(String fname) {
        this.fname = fname;
    }

    /**
     * @return the lname
     */
    public String getLname() {
        return lname;
    }

    /**
     * @param lname the lname to set
     */
    public void setLname(String lname) {
        this.lname = lname;
    }

    /**
     * @return the ruser
     */
    public String getRuser() {
        return ruser;
    }

    /**
     * @param ruser the ruser to set
     */
    public void setRuser(String ruser) {
        this.ruser = ruser;
    }

    /**
     * @return the rpass
     */
    public String getRpass() {
        return rpass;
    }

    /**
     * @param rpass the rpass to set
     */
    public void setRpass(String rpass) {
        this.rpass = rpass;
    }

    /**
     * @param mob the mob to set
     */
    public void setMob(String mob) {
        this.mob = mob;
          
    }

    /**
     * @return the mob
     */
    public String getMob() {
        return mob;
    }
    
}
