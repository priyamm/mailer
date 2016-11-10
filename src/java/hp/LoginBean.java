/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package hp;



/**
 *
 * @author Admin
 */
public class LoginBean extends org.apache.struts.action.ActionForm {
    
    private String user;
    private String pass;
    private String sendto;
    private String area;

    /**
     * @return the user
     */
    public String getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(String user) {
        this.user = user;
    }

    /**
     * @return the pass
     */
    public String getPass() {
        return pass;
    }

    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }

    /**
     * @return the sendto
     */
    public String getSendto() {
        return sendto;
    }

    /**
     * @param sendto the sendto to set
     */
    public void setSendto(String sendto) {
        this.sendto = sendto;
    }

    /**
     * @return the area
     */
    public String getArea() {
        return area;
    }

    /**
     * @param area the area to set
     */
    public void setArea(String area) {
        this.area = area;
    }
    
}