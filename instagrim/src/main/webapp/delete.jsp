
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>instagrimCYYANG</title>
        <link rel="stylesheet" type="text/css" href="/instagrimCYYANG/Styles.css" />
<head>
	<title>delete</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
            <link rel="stylesheet" type="text/css" href="/instagrimCYYANG/Styles.css" />
 
</head>
	<body>
	<header>
        <h1>instagrimCYYANG ! </h1>
        <h2>Your world in Black and White</h2>
    </header>
 			 <article>	
				
				
				 <a href="/instagrimCYYANG/showImage/<%=request.getParameter("pic")%>" ><img src="/instagrimCYYANG/Image/<%=request.getParameter("pic")%>"></a>
				Sure to delete?
				<a href="delete?id=<%=request.getParameter("pic")%>">yes</a>
				<a href="/instagrimCYYANG/UserPics.jsp">no</a>
				
				
				  </article>
</body>
</html>