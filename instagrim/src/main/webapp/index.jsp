<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>
<%@page import="java.util.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>

<!DOCTYPE html>
<html>
    <head>
        <title>instagrimCYYANG</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    				<%
    				Integer visitorCount = (Integer)application.getAttribute("visitorCount"); 
    				if(visitorCount == null)
    				{
    					visitorCount=1; 					
    				}else{
    					visitorCount++;	
    				}
    				application.setAttribute("visitorCount", visitorCount);
    				   				
    				%>
    				<h3>you are visitor No.<%= visitorCount%></h3>
    				       <header>
            <h1>instagrimCYYANG ! </h1>
            <h2>Your world in Black and White</h2>  
        </header>
        <nav>
            <ul>
            
             <li><a href="friend">See other users</a></li>
            		
                    <%                    
                    LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                    
                    
                    java.util.LinkedList<String> lsPics = (java.util.LinkedList<String>) request.getAttribute("users");
                    if (lsPics != null) {
               		
                    Iterator<String> iterator;
                    iterator = lsPics.iterator();
                          while (iterator.hasNext()) {
                String s = (String) iterator.next();
              
               // if(p.getBytes()!=null){
                %>
               <li><a href="/instagrimCYYANG/Imageguest/<%=s%>"><%=s%></a></li>
				                   <%
				                   if (lg != null) {
				                  String UserName = lg.getUsername();
				                    if (lg.getlogedin()) {
				                    	 if( lg.getUsername()!=s){
				                   %>
				                   	<li><a href="addf?id=<%=s%>&userid<%=lg.getUsername()%>">add <%=s%> to friendlist</a></li>
								  <%
				                    }
				              }
             		  		  }
             				  }
              			      }
                 if (lg != null) {
                 String UserName = lg.getUsername();
                 if (lg.getlogedin()) {
                    %>
                   <li>Hello, <%=lg.getUsername()%> </li>
                
                 <li><a href="logout">logout</a></li>
                 <li><a href="upload.jsp">Upload</a></li>
                 <li><a href="/instagrimCYYANG/Images/<%=lg.getUsername()%>?user=<%=lg.getUsername()%>">Your Images</a></li>
                  
                    <%}
                            }else{                          	
                           %> 
                <li><a href="register.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
                <%
                    }%>                    
            </ul>
        </nav>
        <footer>
            <ul>
                <li class="footer"><a href="/instagrimCYYANG">Home</a></li>
                <li>&COPY; Andy C</li>
            </ul>
        </footer>
    </body>
</html>
