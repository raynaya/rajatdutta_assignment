/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Listener;

import java.util.GregorianCalendar;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author shamik
 */
public class ApplicationListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce) {
      



bidObject b=new bidObject("ipod",new GregorianCalendar(2012,02,9,16,00,00),2,16000);
sce.getServletContext().setAttribute("b",b );
    }

    public void contextDestroyed(ServletContextEvent sce) {
       sce.getServletContext().removeAttribute("visitors");
    }

}
