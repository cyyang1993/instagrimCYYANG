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
        
        <nav>
            <ul>
                <li class="nav"><a href="/instagrimCYYANG/upload.jsp">Upload</a></li>
                <li class="nav"><a href="/instagrimCYYANG/Images/majed">Sample Images</a></li>
            </ul>
        </nav>
 
        <article>
            <h1>Your Pics</h1>
        <%
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            if (lsPics == null) {
        %>
        <p>No Pictures found</p>
        <%
        } else {
       		
            Iterator<Pic> iterator;
            iterator = lsPics.iterator();
            
            /*    int arraySize=0;
            while (iterator.hasNext()) {
            	arraySize++;
            }
            UUID pic[]=new type[arraySize]; 
            iterator = lsPics.iterator();
            for(int i=0;iterator.hasNext();i++) {          	
          		Pic p = (Pic) iterator.next();
          		UUID pic[i]=p.getSUUID();
           		}
            
            iterator = lsPics.iterator();
            for(int i=0;iterator.hasNext();i++) {
            */
            while (iterator.hasNext()) {
        Pic p = (Pic) iterator.next();
       // if(p.getBytes()!=null){
        %>
        <%--
      
        <a href="/instagrimCYYANG/Image/<%=p.getSUUID()%>" >
           
        --%>
         
        <a href="/instagrimCYYANG/showImage/<%=p.getSUUID()%>?pic=<%=p.getSUUID()%>" ><img src="/instagrimCYYANG/Thumb/<%=p.getSUUID()%>"></a>
         <a href="/instagrimCYYANG/delete.jsp?pic=<%=p.getSUUID()%>">delete</a><br/>
        <%
        //}
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
