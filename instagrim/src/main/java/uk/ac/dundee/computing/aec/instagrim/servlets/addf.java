package uk.ac.dundee.computing.aec.instagrim.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts;
import uk.ac.dundee.computing.aec.instagrim.models.friends;

import com.datastax.driver.core.Cluster;

import com.datastax.driver.core.Cluster;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts;
import uk.ac.dundee.computing.aec.instagrim.models.User;
/**
 * Servlet implementation class addf
 */
@WebServlet("/addf")
public class addf extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 Cluster cluster=null;
	 public void init(ServletConfig config) throws ServletException {
	        // TODO Auto-generated method stub
	        cluster = CassandraHosts.getCluster();
	    }
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addf() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.sendRedirect("/instagrimCYYANG");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		
		 String friendname=(String) request.getParameter("id");
		 String username=(String) request.getParameter("userid");
			
		 friends fd = new friends();
	        fd.setCluster(cluster);
	       boolean set=fd.SetFriend(username, friendname);	
	       
	       response.sendRedirect("/instagrimCYYANG");
	}

}
