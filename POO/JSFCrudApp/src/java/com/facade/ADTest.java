/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.facade;

import java.util.HashSet;
import java.util.Map;

/**
 *
 * @author placido
 */
public class ADTest {
 
    public static void main (String[] args) {
 
        AdAuthenticator1 adAuthenticator = new AdAuthenticator1();
         
        // Test bad password
        //System.out.println("Testing bad password...");
        //Map<String,Object> attrs = adAuthenticator.authenticate("SOMEUSER","badpassword");
         
        // Test good password
        System.out.println("Testing good password...");
        
        Map<String,Object> attrs = adAuthenticator.authenticate("placido","edi#2009");
         
        if (attrs != null) {
            for (String attrKey : attrs.keySet()) {
                if (attrs.get(attrKey) instanceof String) {
                    System.out.println(attrKey +": "+attrs.get(attrKey));
                } else {
                    System.out.println(attrKey +": (Multiple Values)");
                    for (Object o : (HashSet)attrs.get(attrKey)) {
                        System.out.println("\t value: " +o);
                    }
                }
            }
        } else {
            System.out.println("Attributes are null!");
        }
         
    }
     
}