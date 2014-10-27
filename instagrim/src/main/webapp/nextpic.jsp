<%-- 
    Document   : Showbigpics
  
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
        
         /*	
         java.util.LinkedList<Pic> lsPics1= request.getParameter("id");
         
         Iterator<Pic> iterator;
            iterator = lsPics.iterator();
           
            Pic p = (Pic) iterator.next();
      	   boolean lib=null;
            if (lib=true)
            String q;
            String a= q;
            if  (q==null)
            
            String a=p.getSUUID();*/
            String a=null;
        %>
       
        <a href="/instagrimCYYANG/Image/<%=a%>" ><img src="/instagrimCYYANG/Image/<%=a%>"></a>
          <a href="nextpic.jsp?id=IsPics">next</a>
         <a href="lastpic">last</a>
         
         
         
         
         
         
          
         <br/>
         
       
        </article>
 
        <footer>
            <ul>
                <li class="footer"><a href="/instagrimCYYANG">Home</a></li>
            </ul>
        </footer>
    </body>
</html>

