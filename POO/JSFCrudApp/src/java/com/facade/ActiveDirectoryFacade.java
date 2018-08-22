/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.facade;

import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
 
import javax.naming.*;
import javax.naming.directory.*;


/**
 *
 * @author placido
 */
public class ActiveDirectoryFacade {
 
    private static final String MASTER_USER_DN = "placidoadmin@cnpc.embrapa.br";
    private static final String MASTER_PASSWORD = "eatccap#2010";
    private final String ldapUrl;
    private final String searchBase;
 
    /**
     * @param ldapUrl LDAP URL, e.g. "ldap://10.0.0.1:389"
     * @param searchBase Base for doing user search, e.g. "OU=Users,DC=tnegri,DC=com"
     */
    public ActiveDirectoryFacade(String ldapUrl, String searchBase) {
        this.ldapUrl = ldapUrl;
        this.searchBase = searchBase;
    }
 
    public boolean hasGroup(String username, String password, String groupObjectName) throws NamingException {
        List<String> allGroups = getAllGroups(username, password);
        return allGroups.contains(groupObjectName);
    }
 
    private List<String> getAllGroups(String username, String password) throws NamingException {
        List<String> result = new ArrayList<>();
 
        String attributeToLookup = "memberOf";
 
        /*
         * 1. Authenticate using master user.
         */
        DirContext ctx = authenticate();
 
        /*
         * 2. Searches by "sAMAccountName" to recover the full DN of the username trying to login.
         */
        SearchControls searchControls = new SearchControls();
        searchControls.setSearchScope(SearchControls.SUBTREE_SCOPE);
        searchControls.setReturningAttributes(new String[] { "distinguishedName" });
        NamingEnumeration<SearchResult> searchResults = ctx.search(searchBase, String.format("(sAMAccountName=%s)", username), searchControls);
        if (!searchResults.hasMore()) {
            /*
             * If can't resolve DN, the user doesn't exists.
             */
            throw new NamingException();
        }
        SearchResult searchResult = searchResults.next();
        Attributes attributes = searchResult.getAttributes();
        Attribute attribute = attributes.get("distinguishedName");
        String userObject = (String) attribute.get();
 
        /*
         * 3. Authenticates to LDAP with the user, will throw if password is wrong.
         */
        ctx.close();
        ctx = authenticate(userObject, password);
 
        /*
         * 4. Fetch all groups of user.
         */
        attributes = ctx.getAttributes(userObject, new String[] { attributeToLookup });
 
        NamingEnumeration<? extends Attribute> allAttributes = attributes.getAll();
        while (allAttributes.hasMoreElements()) {
            attribute = allAttributes.nextElement();
            int size = attribute.size();
            for (int i = 0; i < size; i++) {
                String attributeValue = (String) attribute.get(i);
                result.add(attributeValue);
            }
        }
 
        ctx.close();
 
        return result;
    }
 
    private DirContext authenticate() throws NamingException {
        return authenticate(null, null);
    }
 
    private DirContext authenticate(String username, String password) throws NamingException {
        String initialContextFactory = "com.sun.jndi.ldap.LdapCtxFactory";
        String securityAuthentication = "simple";
 
        Hashtable<String, String> env = new Hashtable<String, String>();
        env.put(Context.INITIAL_CONTEXT_FACTORY, initialContextFactory);
        env.put(Context.SECURITY_AUTHENTICATION, securityAuthentication);
        env.put(Context.PROVIDER_URL, ldapUrl);
        env.put(Context.SECURITY_PRINCIPAL, username != null ? username : MASTER_USER_DN);
        env.put(Context.SECURITY_CREDENTIALS, password != null ? password : MASTER_PASSWORD);
 
        DirContext ctx = new InitialDirContext(env);
 
        return ctx;
    }
    
    public static void main(String[] args){
        ActiveDirectoryFacade a = new ActiveDirectoryFacade("ldap://192.168.137.10:389","OU=SetoresCNPC,dc=cnpc,dc=embrapa,dc=br");
        try {
            DirContext d = a.authenticate("placido", "edi#2009");
        } catch (NamingException ex) {
            Logger.getLogger(ActiveDirectoryFacade.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
}