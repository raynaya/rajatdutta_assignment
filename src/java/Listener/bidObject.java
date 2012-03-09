/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Listener;

import java.util.GregorianCalendar;

/**
 *
 * @author shamik
 */
public class bidObject {
  public  String name;
  public String highestBidder;
public GregorianCalendar g;
public int TIMEPERIODTOBID;
public int highestBid;
   public  bidObject(String x,GregorianCalendar g,int timeperiod,int startingBid)
    {   name=x;
        this.g=g;
        TIMEPERIODTOBID=timeperiod;
        highestBid=startingBid;
    }

}

