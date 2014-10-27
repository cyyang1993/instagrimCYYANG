<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>instagrimCYYANG</title>
        <link rel="stylesheet" type="text/css" href="/instagrimCYYANG/Styles.css" />
    </head>
    <body>
        <header>
        
        <h1>instagrimCYYANG ! </h1>
        <h2>Your world in Black and White</h2>
        </header>
     
        <article>
            <h1>His/her Pics</h1>
        <%
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            if (lsPics == null) {
        %>
        <p>No Pictures found</p>
        <%
        } else {
       		
            Iterator<Pic> iterator;
            iterator = lsPics.iterator();

            while (iterator.hasNext()) {
        Pic p = (Pic) iterator.next();
       // if(p.getBytes()!=null){
        %>
               
         
        <a href="/instagrimCYYANG/showImage/<%=p.getSUUID()%>?pic=<%=p.getSUUID()%>" ><img src="/instagrimCYYANG/Thumb/<%=p.getSUUID()%>"></a>
        <%
       
           }
            }
                  %>
        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/instagrimCYYANG">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
